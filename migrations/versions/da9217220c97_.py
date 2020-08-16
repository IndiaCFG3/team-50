"""empty message

Revision ID: da9217220c97
Revises: 
Create Date: 2020-08-16 19:52:45.648372

"""
from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision = 'da9217220c97'
down_revision = None
branch_labels = None
depends_on = None


def upgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.create_table('teacher',
    sa.Column('id', sa.Integer(), nullable=False),
    sa.Column('name', sa.String(length=100), nullable=False),
    sa.Column('username', sa.String(length=50), nullable=False),
    sa.Column('password', sa.Text(), nullable=False),
    sa.PrimaryKeyConstraint('id'),
    sa.UniqueConstraint('username')
    )
    op.create_table('studentteacher',
    sa.Column('id', sa.Integer(), nullable=False),
    sa.Column('name', sa.String(length=20), nullable=False),
    sa.Column('username', sa.String(length=20), nullable=False),
    sa.Column('presence', sa.Integer(), nullable=False),
    sa.Column('confidence', sa.Integer(), nullable=False),
    sa.Column('initiative', sa.Integer(), nullable=False),
    sa.Column('preperation', sa.Integer(), nullable=False),
    sa.Column('helpful', sa.Integer(), nullable=False),
    sa.Column('comments', sa.Text(), nullable=False),
    sa.Column('rating', sa.Integer(), nullable=False),
    sa.Column('session_image', sa.String(length=64), nullable=True),
    sa.Column('date', sa.DateTime(), nullable=False),
    sa.ForeignKeyConstraint(['username'], ['teacher.username'], ),
    sa.PrimaryKeyConstraint('id')
    )
    # ### end Alembic commands ###


def downgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.drop_table('studentteacher')
    op.drop_table('teacher')
    # ### end Alembic commands ###
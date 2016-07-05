require 'rspec'
require './counter'

describe 'Count Words' do

  before do
    @counter = Counter.new('./speech.txt')
  end

  it 'should list all words in order of occurance descending' do
    expect(@counter.list_words).to eq(word_list)
  end

end

def word_list
  %{36 - of
32 - the
26 - to
22 - I
19 - and
16 - a
13 - in
13 - as
11 - that
11 - our
10 - their
10 - it
8 - this
8 - is
6 - with
6 - well
6 - have
5 - on
5 - not
5 - for
5 - but
5 - be
5 - are
5 - Government
4 - think
4 - them
4 - so
4 - shall
4 - people
4 - own
4 - may
4 - its
4 - can
4 - all
4 - Sir
4 - Constitution
3 - who
3 - we
3 - they
3 - therefore
3 - other
3 - opinions
3 - opinion
3 - only
3 - no
3 - never
3 - men
3 - if
3 - doubt
3 - by
3 - better
3 - being
3 - because
3 - any
3 - am
2 - you
2 - wisdom
2 - which
2 - wherever
2 - when
2 - were
2 - us
2 - unanimity
2 - those
2 - these
2 - there
2 - sure
2 - such
2 - right
2 - others
2 - or
2 - one
2 - objections
2 - naturally
2 - more
2 - meet
2 - me
2 - many
2 - make
2 - judgment
2 - infallibility
2 - his
2 - having
2 - had
2 - general
2 - from
2 - every
2 - errors
2 - assemble
2 - approve
2 - among
2 - administered
2 - It
2 - For
2 - Convention
2 - Church
1 - —
1 - years
1 - wrong
1 - would
1 - wish
1 - will
1 - whole
1 - whispered
1 - whether
1 - what
1 - walls
1 - waiting
1 - views
1 - unanimously
1 - turn
1 - truth
1 - toujours
1 - too
1 - throats
1 - thoughts
1 - thought
1 - though
1 - thereby
1 - themselves
1 - that's
1 - tells
1 - system
1 - syllable
1 - support
1 - subjects
1 - strength
1 - still
1 - sister
1 - several
1 - separation
1 - sentiments
1 - selfish
1 - securing
1 - sects
1 - sect
1 - salutary
1 - sakes
1 - sake
1 - said
1 - sacrifice
1 - returning
1 - resulting
1 - respect
1 - report
1 - recommending
1 - received
1 - real
1 - raison
1 - qui
1 - que
1 - put
1 - purpose
1 - public
1 - production
1 - procuring
1 - private
1 - prevent
1 - present
1 - prejudices
1 - posterity
1 - possession
1 - point
1 - persons
1 - perfection
1 - perfect
1 - pay
1 - passions
1 - parts
1 - partizans
1 - part
1 - ourselves
1 - otherwise
1 - once
1 - older
1 - occasion
1 - obtain
1 - obliged
1 - number
1 - need
1 - necessary
1 - near
1 - name
1 - n'y
1 - myself
1 - my
1 - most
1 - moi
1 - might
1 - member
1 - means
1 - manifest
1 - lose
1 - long
1 - local
1 - lived
1 - little
1 - likely
1 - like
1 - lady
1 - know
1 - joint
1 - interests
1 - integrity
1 - instrument
1 - instances
1 - information
1 - influence
1 - infallible
1 - inevitably
1 - indeed
1 - incapable
1 - important
1 - how
1 - hope
1 - highly
1 - hereafter
1 - here
1 - her
1 - help
1 - heartily
1 - hear
1 - he
1 - has
1 - happiness
1 - happens
1 - grow
1 - great
1 - goodness
1 - good
1 - generally
1 - gain
1 - future
1 - fuller
1 - french
1 - found
1 - forms
1 - form
1 - foreign
1 - find
1 - few
1 - favor
1 - faults
1 - farther
1 - far
1 - extend
1 - expressing
1 - express
1 - experienced
1 - expected
1 - expect
1 - even
1 - error
1 - enemies
1 - endeavors
1 - endeavor
1 - end
1 - efficiency
1 - effects
1 - done
1 - don't
1 - does
1 - doctrines
1 - do
1 - dispute
1 - difference
1 - differ
1 - die
1 - despotic
1 - depends
1 - cutting
1 - course
1 - councils
1 - corrupted
1 - constitution
1 - consideration
1 - consent
1 - confounded
1 - confirmed
1 - confidence
1 - confess
1 - change
1 - certainty
1 - certain
1 - born
1 - body
1 - blessing
1 - between
1 - best
1 - believe
1 - before
1 - become
1 - at
1 - astonishes
1 - astonish
1 - assembly
1 - apt
1 - approved
1 - approaching
1 - apparent
1 - another's
1 - an
1 - always
1 - almost
1 - agree
1 - advantages
1 - advantage
1 - administred
1 - act
1 - abroad
1 - able
1 - Within
1 - Thus
1 - The
1 - Steele
1 - States
1 - Sister
1 - Rome
1 - Religion
1 - Protestant
1 - President
1 - Pope
1 - On
1 - Nations
1 - Much
1 - Mr
1 - Most
1 - In
1 - Il
1 - If
1 - Governors
1 - From
1 - Franklin
1 - England
1 - Despotism
1 - Dedication
1 - Conventions)
1 - Constituents
1 - Congress
1 - Churches
1 - But
1 - Builders
1 - Benjamin
1 - Babel
}
end



.class public Lorg/apache/commons/net/telnet/TelnetOption;
.super Ljava/lang/Object;
.source "TelnetOption.java"


# static fields
.field public static final APPROXIMATE_MESSAGE_SIZE:I = 0x4

.field public static final AUTHENTICATION:I = 0x25

.field public static final BINARY:I = 0x0

.field public static final BYTE_MACRO:I = 0x13

.field public static final DATA_ENTRY_TERMINAL:I = 0x14

.field public static final ECHO:I = 0x1

.field public static final ENCRYPTION:I = 0x26

.field public static final END_OF_RECORD:I = 0x19

.field public static final EXTENDED_ASCII:I = 0x11

.field public static final EXTENDED_OPTIONS_LIST:I = 0xff

.field public static final FORCE_LOGOUT:I = 0x12

.field public static final LINEMODE:I = 0x22

.field public static final MAX_OPTION_VALUE:I = 0xff

.field public static final NEGOTIATE_CARRIAGE_RETURN:I = 0xa

.field public static final NEGOTIATE_FORMFEED:I = 0xd

.field public static final NEGOTIATE_HORIZONTAL_TAB:I = 0xc

.field public static final NEGOTIATE_HORIZONTAL_TAB_STOP:I = 0xb

.field public static final NEGOTIATE_LINEFEED:I = 0x10

.field public static final NEGOTIATE_OUTPUT_LINE_WIDTH:I = 0x8

.field public static final NEGOTIATE_OUTPUT_PAGE_SIZE:I = 0x9

.field public static final NEGOTIATE_VERTICAL_TAB:I = 0xf

.field public static final NEGOTIATE_VERTICAL_TAB_STOP:I = 0xe

.field public static final NEW_ENVIRONMENT_VARIABLES:I = 0x27

.field public static final OLD_ENVIRONMENT_VARIABLES:I = 0x24

.field public static final OUTPUT_MARKING:I = 0x1b

.field public static final PREPARE_TO_RECONNECT:I = 0x2

.field public static final REGIME_3270:I = 0x1d

.field public static final REMOTE_CONTROLLED_TRANSMISSION:I = 0x7

.field public static final REMOTE_FLOW_CONTROL:I = 0x21

.field public static final SEND_LOCATION:I = 0x17

.field public static final STATUS:I = 0x5

.field public static final SUPDUP:I = 0x15

.field public static final SUPDUP_OUTPUT:I = 0x16

.field public static final SUPPRESS_GO_AHEAD:I = 0x3

.field public static final TACACS_USER_IDENTIFICATION:I = 0x1a

.field public static final TERMINAL_LOCATION_NUMBER:I = 0x1c

.field public static final TERMINAL_SPEED:I = 0x20

.field public static final TERMINAL_TYPE:I = 0x18

.field public static final TIMING_MARK:I = 0x6

.field public static final WINDOW_SIZE:I = 0x1f

.field public static final X3_PAD:I = 0x1e

.field public static final X_DISPLAY_LOCATION:I = 0x23

.field private static final __FIRST_OPTION:I = 0x0

.field private static final __LAST_OPTION:I = 0xff

.field private static final __optionString:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 122
    const/16 v0, 0x100

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "BINARY"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ECHO"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "RCP"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "SUPPRESS GO AHEAD"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "NAME"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "STATUS"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "TIMING MARK"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "RCTE"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "NAOL"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "NAOP"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "NAOCRD"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "NAOHTS"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "NAOHTD"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "NAOFFD"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "NAOVTS"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "NAOVTD"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "NAOLFD"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "EXTEND ASCII"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "LOGOUT"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "BYTE MACRO"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "DATA ENTRY TERMINAL"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "SUPDUP"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "SUPDUP OUTPUT"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "SEND LOCATION"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "TERMINAL TYPE"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "END OF RECORD"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "TACACS UID"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "OUTPUT MARKING"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "TTYLOC"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "3270 REGIME"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "X.3 PAD"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "NAWS"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "TSPEED"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "LFLOW"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "LINEMODE"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "XDISPLOC"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "OLD-ENVIRON"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "AUTHENTICATION"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "ENCRYPT"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "NEW-ENVIRON"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "TN3270E"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "XAUTH"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "CHARSET"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "RSP"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "Com Port Control"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "Suppress Local Echo"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "Start TLS"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "KERMIT"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "SEND-URL"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "FORWARD_X"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "TELOPT PRAGMA LOGON"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "TELOPT SSPI LOGON"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "TELOPT PRAGMA HEARTBEAT"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xac

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xae

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xba

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xca

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xce

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xda

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xde

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xe5

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xe6

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xe7

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xe8

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xe9

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xea

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xeb

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xec

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xed

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xee

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xef

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xf0

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xf1

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xf2

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xf3

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xf4

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xf5

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xf6

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xf7

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xf8

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xf9

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xfa

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xfb

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xfc

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xfd

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xfe

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xff

    const-string v2, "Extended-Options-List"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/net/telnet/TelnetOption;->__optionString:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getOption(I)Ljava/lang/String;
    .locals 1
    .param p0, "code"    # I

    .prologue
    .line 167
    sget-object v0, Lorg/apache/commons/net/telnet/TelnetOption;->__optionString:[Ljava/lang/String;

    aget-object v0, v0, p0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 169
    const-string v0, "UNASSIGNED"

    .line 173
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/apache/commons/net/telnet/TelnetOption;->__optionString:[Ljava/lang/String;

    aget-object v0, v0, p0

    goto :goto_0
.end method

.method public static final isValidOption(I)Z
    .locals 1
    .param p0, "code"    # I

    .prologue
    .line 187
    const/16 v0, 0xff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

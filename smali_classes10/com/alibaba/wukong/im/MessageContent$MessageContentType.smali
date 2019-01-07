.class public Lcom/alibaba/wukong/im/MessageContent$MessageContentType;
.super Ljava/lang/Object;
.source "MessageContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/im/MessageContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageContentType"
.end annotation


# static fields
.field public static final AUDIO:I = 0x3

.field public static final AUTH_AUDIO:I = 0xfc

.field public static final AUTH_COMMON_VIDEO:I = 0xfe

.field public static final AUTH_IMAGE:I = 0xfb

.field public static final AUTH_VIDEO:I = 0xfd

.field public static final CMAIL:I = 0x190

.field public static final COMMENT:I = 0x578

.field public static final COMMON_VIDEO:I = 0xca

.field public static final DING_CARD:I = 0x640

.field public static final ENCRYPTED_SPACE_FILE:I = 0x1f6

.field public static final ENCRYPT_AUDIO:I = 0xcc

.field public static final ENCRYPT_COMMON_VIDEO:I = 0xce

.field public static final ENCRYPT_IMAGE:I = 0xcb

.field public static final ENCRYPT_VIDEO:I = 0xcd

.field public static final FILE:I = 0x4

.field public static final FORWARD_COMBINE:I = 0x5dc

.field public static final GEO:I = 0x68

.field public static final IMAGE:I = 0x2

.field public static final LINKED:I = 0x66

.field public static final LINKED_NO_MENU:I = 0x515

.field public static final PERSONAL_SPACE_FILE:I = 0x1f5

.field public static final ROBOT_MARKDOWN:I = 0x4b0

.field public static final ROBOT_MARKDOWN_EX:I = 0x4b1

.field public static final ROBOT_MARKDOWN_ICON:I = 0x4b2

.field public static final ROBOT_MARKDOWN_ICON_EX:I = 0x4b4

.field public static final SPACE_FILE:I = 0x1f4

.field public static final SPACE_FOLDER:I = 0x1f7

.field public static final SPACE_LINK:I = 0x1f8

.field public static final TEXT:I = 0x1

.field public static final UNKNOWN:I = -0x1

.field public static final VIDEO:I = 0x67


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

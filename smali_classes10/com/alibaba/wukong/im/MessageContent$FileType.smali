.class public Lcom/alibaba/wukong/im/MessageContent$FileType;
.super Ljava/lang/Object;
.source "MessageContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/im/MessageContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileType"
.end annotation


# static fields
.field public static final GIF:I = 0x4

.field public static final JPG:I = 0x3

.field public static final PNG:I = 0x2

.field public static final UNKNOWN:I = -0x1

.field public static final WEBP:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

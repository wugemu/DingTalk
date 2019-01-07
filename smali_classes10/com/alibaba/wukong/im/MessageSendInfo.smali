.class public Lcom/alibaba/wukong/im/MessageSendInfo;
.super Ljava/lang/Object;
.source "MessageSendInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x238f2412f7fe1ae1L


# instance fields
.field public extension:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public messageType:Lcom/alibaba/wukong/im/Message$MessageType;

.field public priority:I

.field public tag:J

.field public xpnInfo:Lcom/alibaba/wukong/im/XPNInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

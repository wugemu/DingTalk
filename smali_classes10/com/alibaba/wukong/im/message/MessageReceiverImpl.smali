.class public Lcom/alibaba/wukong/im/message/MessageReceiverImpl;
.super Ljava/lang/Object;
.source "MessageReceiverImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/im/MessageReceiver;


# static fields
.field private static final serialVersionUID:J = 0x60d97a8b6abcaa6cL


# instance fields
.field public mStatus:Lcom/alibaba/wukong/im/Message$ReadStatus;

.field public mUser:Lcom/alibaba/wukong/im/User;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public readStatus()Lcom/alibaba/wukong/im/Message$ReadStatus;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageReceiverImpl;->mStatus:Lcom/alibaba/wukong/im/Message$ReadStatus;

    return-object v0
.end method

.method public user()Lcom/alibaba/wukong/im/User;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageReceiverImpl;->mUser:Lcom/alibaba/wukong/im/User;

    return-object v0
.end method

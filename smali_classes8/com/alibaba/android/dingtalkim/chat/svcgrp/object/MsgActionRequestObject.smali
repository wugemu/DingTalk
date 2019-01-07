.class public Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/MsgActionRequestObject;
.super Ljava/lang/Object;
.source "MsgActionRequestObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private actionType:Ljava/lang/String;

.field private cid:Ljava/lang/String;

.field private msgId:J


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "msgId"    # J
    .param p3, "cid"    # Ljava/lang/String;
    .param p4, "actionType"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-wide p1, p0, Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/MsgActionRequestObject;->msgId:J

    .line 14
    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/MsgActionRequestObject;->cid:Ljava/lang/String;

    .line 15
    iput-object p4, p0, Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/MsgActionRequestObject;->actionType:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public getActionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/MsgActionRequestObject;->actionType:Ljava/lang/String;

    return-object v0
.end method

.method public getCid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/MsgActionRequestObject;->cid:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 19
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/MsgActionRequestObject;->msgId:J

    return-wide v0
.end method

.method public toIdl()Ldfq;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 31
    new-instance v0, Ldfq;

    invoke-direct {v0}, Ldfq;-><init>()V

    .line 32
    .local v0, "result":Ldfq;
    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/MsgActionRequestObject;->msgId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Ldfq;->a:Ljava/lang/Long;

    .line 33
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/MsgActionRequestObject;->cid:Ljava/lang/String;

    iput-object v1, v0, Ldfq;->b:Ljava/lang/String;

    .line 34
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/MsgActionRequestObject;->actionType:Ljava/lang/String;

    iput-object v1, v0, Ldfq;->c:Ljava/lang/String;

    .line 35
    return-object v0
.end method

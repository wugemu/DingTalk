.class public Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/AnswerObject;
.super Ljava/lang/Object;
.source "AnswerObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x5f631898843d8694L


# instance fields
.field private mAnswerDetailList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/AnswerDetailObject;",
            ">;"
        }
    .end annotation
.end field

.field private mMsgId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fromDetailObjects(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ldfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/AnswerDetailObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "models":Ljava/util/List;, "Ljava/util/List<Ldfo;>;"
    invoke-static {p0}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 39
    const/4 v1, 0x0

    .line 52
    :cond_0
    return-object v1

    .line 42
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Lcpd;->a(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 44
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/AnswerDetailObject;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldfo;

    .line 45
    .local v0, "model":Ldfo;
    if-eqz v0, :cond_2

    .line 49
    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/AnswerDetailObject;->fromIdl(Ldfo;)Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/AnswerDetailObject;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static fromIdl(Ldfp;)Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/AnswerObject;
    .locals 4
    .param p0, "model"    # Ldfp;

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 30
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/AnswerObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/AnswerObject;-><init>()V

    .line 31
    .local v0, "result":Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/AnswerObject;
    iget-object v1, p0, Ldfp;->a:Ljava/lang/Long;

    .line 1044
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 31
    iput-wide v2, v0, Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/AnswerObject;->mMsgId:J

    .line 32
    iget-object v1, p0, Ldfp;->b:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/AnswerObject;->fromDetailObjects(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/AnswerObject;->mAnswerDetailList:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public getAnswerDetailList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/AnswerDetailObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/AnswerObject;->mAnswerDetailList:Ljava/util/List;

    return-object v0
.end method

.method public getMsgId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/AnswerObject;->mMsgId:J

    return-wide v0
.end method

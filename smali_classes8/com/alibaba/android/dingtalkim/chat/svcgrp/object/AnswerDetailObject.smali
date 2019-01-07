.class public Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/AnswerDetailObject;
.super Ljava/lang/Object;
.source "AnswerDetailObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x5a2968dd6ef1b0c8L


# instance fields
.field private mAnswerContent:Ljava/lang/String;

.field private mAnswerId:Ljava/lang/String;

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/AnswerDetailObject;->mAnswerContent:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public static fromIdl(Ldfo;)Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/AnswerDetailObject;
    .locals 3
    .param p0, "model"    # Ldfo;

    .prologue
    .line 36
    if-nez p0, :cond_0

    .line 37
    const/4 v0, 0x0

    .line 45
    :goto_0
    return-object v0

    .line 40
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/AnswerDetailObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/AnswerDetailObject;-><init>()V

    .line 41
    .local v0, "result":Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/AnswerDetailObject;
    iget-object v1, p0, Ldfo;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/AnswerDetailObject;->mAnswerId:Ljava/lang/String;

    .line 42
    iget-object v1, p0, Ldfo;->b:Ljava/lang/Integer;

    .line 1033
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 42
    iput v1, v0, Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/AnswerDetailObject;->mType:I

    .line 43
    iget-object v1, p0, Ldfo;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/AnswerDetailObject;->mAnswerContent:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getAnswerContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/AnswerDetailObject;->mAnswerContent:Ljava/lang/String;

    return-object v0
.end method

.method public getAnswerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/AnswerDetailObject;->mAnswerId:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/AnswerDetailObject;->mType:I

    return v0
.end method

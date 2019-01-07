.class public Lcom/alibaba/android/ding/base/objects/draft/DingDraftMergeResult;
.super Ljava/lang/Object;
.source "DingDraftMergeResult.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x4aa7ec6c0dfaef98L


# instance fields
.field private dbDraftObject:Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;

.field private dingMergedCreateInfo:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDbDraftObject()Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/draft/DingDraftMergeResult;->dbDraftObject:Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;

    return-object v0
.end method

.method public getDingMergedCreateInfo()Lcom/alibaba/android/ding/base/objects/DingCreateInfo;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/draft/DingDraftMergeResult;->dingMergedCreateInfo:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    return-object v0
.end method

.method public setDbDraftObject(Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;)V
    .locals 0
    .param p1, "dbDraftObject"    # Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/alibaba/android/ding/base/objects/draft/DingDraftMergeResult;->dbDraftObject:Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;

    .line 37
    return-void
.end method

.method public setDingMergedCreateInfo(Lcom/alibaba/android/ding/base/objects/DingCreateInfo;)V
    .locals 0
    .param p1, "dingMergedCreateInfo"    # Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/alibaba/android/ding/base/objects/draft/DingDraftMergeResult;->dingMergedCreateInfo:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    .line 29
    return-void
.end method

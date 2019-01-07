.class public Lcom/alibaba/android/user/model/SWPersonObject;
.super Ljava/lang/Object;
.source "SWPersonObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2b0937fb7736c61L


# instance fields
.field public mDesc:Ljava/lang/String;

.field public mOrgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfry;",
            ">;"
        }
    .end annotation
.end field

.field public mTitle:Ljava/lang/String;

.field public mUid:J

.field public mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDLModel(Lfqi;)Lcom/alibaba/android/user/model/SWPersonObject;
    .locals 6
    .param p0, "model"    # Lfqi;

    .prologue
    .line 26
    const/4 v1, 0x0

    .line 27
    .local v1, "object":Lcom/alibaba/android/user/model/SWPersonObject;
    if-eqz p0, :cond_1

    .line 28
    new-instance v1, Lcom/alibaba/android/user/model/SWPersonObject;

    .end local v1    # "object":Lcom/alibaba/android/user/model/SWPersonObject;
    invoke-direct {v1}, Lcom/alibaba/android/user/model/SWPersonObject;-><init>()V

    .line 29
    .restart local v1    # "object":Lcom/alibaba/android/user/model/SWPersonObject;
    iget-object v3, p0, Lfqi;->a:Ljava/lang/Long;

    .line 1044
    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 29
    iput-wide v4, v1, Lcom/alibaba/android/user/model/SWPersonObject;->mUid:J

    .line 30
    iget-object v3, p0, Lfqi;->b:Ljava/lang/String;

    iput-object v3, v1, Lcom/alibaba/android/user/model/SWPersonObject;->mTitle:Ljava/lang/String;

    .line 31
    iget-object v3, p0, Lfqi;->c:Ljava/lang/String;

    iput-object v3, v1, Lcom/alibaba/android/user/model/SWPersonObject;->mDesc:Ljava/lang/String;

    .line 32
    iget-object v3, p0, Lfqi;->e:Ljava/lang/String;

    iput-object v3, v1, Lcom/alibaba/android/user/model/SWPersonObject;->mUrl:Ljava/lang/String;

    .line 33
    iget-object v3, p0, Lfqi;->d:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 34
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Lcom/alibaba/android/user/model/SWPersonObject;->mOrgList:Ljava/util/List;

    .line 35
    iget-object v3, p0, Lfqi;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfqj;

    .line 36
    .local v0, "modelSummary":Lfqj;
    invoke-static {v0}, Lfry;->a(Lfqj;)Lfry;

    move-result-object v2

    .line 37
    .local v2, "swUserSummaryObject":Lfry;
    if-eqz v2, :cond_0

    .line 38
    iget-object v4, v1, Lcom/alibaba/android/user/model/SWPersonObject;->mOrgList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 43
    .end local v0    # "modelSummary":Lfqj;
    .end local v2    # "swUserSummaryObject":Lfry;
    :cond_1
    return-object v1
.end method

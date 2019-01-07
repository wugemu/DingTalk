.class public final Lcom/alibaba/android/dingtalk/search/base/idl/object/SearchProfessionResultObject;
.super Ljava/lang/Object;
.source "SearchProfessionResultObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x55f38f5cd8d4837fL


# instance fields
.field public modelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/search/base/idl/object/SearchProfessionObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdl(Lcch;)Lcom/alibaba/android/dingtalk/search/base/idl/object/SearchProfessionResultObject;
    .locals 6
    .param p0, "model"    # Lcch;

    .prologue
    .line 17
    if-eqz p0, :cond_0

    iget-object v4, p0, Lcch;->a:Ljava/util/List;

    if-nez v4, :cond_1

    .line 18
    :cond_0
    const/4 v3, 0x0

    .line 30
    :goto_0
    return-object v3

    .line 20
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/search/base/idl/object/SearchProfessionObject;>;"
    iget-object v4, p0, Lcch;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccg;

    .line 22
    .local v1, "m":Lccg;
    if-eqz v1, :cond_2

    .line 25
    invoke-static {v1}, Lcom/alibaba/android/dingtalk/search/base/idl/object/SearchProfessionObject;->fromIdl(Lccg;)Lcom/alibaba/android/dingtalk/search/base/idl/object/SearchProfessionObject;

    move-result-object v2

    .line 26
    .local v2, "obj":Lcom/alibaba/android/dingtalk/search/base/idl/object/SearchProfessionObject;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 28
    .end local v1    # "m":Lccg;
    .end local v2    # "obj":Lcom/alibaba/android/dingtalk/search/base/idl/object/SearchProfessionObject;
    :cond_3
    new-instance v3, Lcom/alibaba/android/dingtalk/search/base/idl/object/SearchProfessionResultObject;

    invoke-direct {v3}, Lcom/alibaba/android/dingtalk/search/base/idl/object/SearchProfessionResultObject;-><init>()V

    .line 29
    .local v3, "object":Lcom/alibaba/android/dingtalk/search/base/idl/object/SearchProfessionResultObject;
    iput-object v0, v3, Lcom/alibaba/android/dingtalk/search/base/idl/object/SearchProfessionResultObject;->modelList:Ljava/util/List;

    goto :goto_0
.end method

.class public final Lcom/alibaba/android/dingtalk/search/base/idl/object/SearchProfessionObject;
.super Ljava/lang/Object;
.source "SearchProfessionObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x1853f10adf08409bL


# instance fields
.field public code:Ljava/lang/String;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdl(Lccg;)Lcom/alibaba/android/dingtalk/search/base/idl/object/SearchProfessionObject;
    .locals 2
    .param p0, "model"    # Lccg;

    .prologue
    .line 16
    if-nez p0, :cond_0

    .line 17
    const/4 v0, 0x0

    .line 22
    :goto_0
    return-object v0

    .line 19
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/search/base/idl/object/SearchProfessionObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/search/base/idl/object/SearchProfessionObject;-><init>()V

    .line 20
    .local v0, "object":Lcom/alibaba/android/dingtalk/search/base/idl/object/SearchProfessionObject;
    iget-object v1, p0, Lccg;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/search/base/idl/object/SearchProfessionObject;->code:Ljava/lang/String;

    .line 21
    iget-object v1, p0, Lccg;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/search/base/idl/object/SearchProfessionObject;->name:Ljava/lang/String;

    goto :goto_0
.end method

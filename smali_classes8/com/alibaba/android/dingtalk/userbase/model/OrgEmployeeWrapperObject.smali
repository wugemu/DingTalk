.class public Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeWrapperObject;
.super Ljava/lang/Object;
.source "OrgEmployeeWrapperObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x7abb3b0df7647f04L


# instance fields
.field public hasMore:Z

.field public orgEmployeeObjectList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;",
            ">;"
        }
    .end annotation
.end field

.field public totalCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromIDLModel(Lcex;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeWrapperObject;
    .locals 4
    .param p1, "wrapperObject"    # Lcex;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 18
    iget-object v1, p1, Lcex;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeWrapperObject;->totalCount:I

    .line 19
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeWrapperObject;->orgEmployeeObjectList:Ljava/util/List;

    .line 20
    iget-object v1, p1, Lcex;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcew;

    .line 21
    .local v0, "model":Lcew;
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeWrapperObject;->orgEmployeeObjectList:Ljava/util/List;

    new-instance v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    invoke-direct {v3}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;-><init>()V

    invoke-virtual {v3, v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->fromIDLModel(Lcew;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 23
    .end local v0    # "model":Lcew;
    :cond_0
    iget-object v1, p1, Lcex;->c:Ljava/lang/Boolean;

    .line 1022
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 23
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeWrapperObject;->hasMore:Z

    .line 24
    return-object p0
.end method

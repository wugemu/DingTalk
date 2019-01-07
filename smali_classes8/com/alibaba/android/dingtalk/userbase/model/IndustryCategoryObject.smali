.class public Lcom/alibaba/android/dingtalk/userbase/model/IndustryCategoryObject;
.super Ljava/lang/Object;
.source "IndustryCategoryObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x441e3bbf7fb837d7L


# instance fields
.field public color:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public mediaId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public subList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromIdlModel(Lcdy;)Lcom/alibaba/android/dingtalk/userbase/model/IndustryCategoryObject;
    .locals 5
    .param p1, "industryCategoryModel"    # Lcdy;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 48
    if-eqz p1, :cond_1

    .line 49
    iget-object v2, p1, Lcdy;->a:Ljava/lang/String;

    iput-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/IndustryCategoryObject;->name:Ljava/lang/String;

    .line 50
    iget-object v2, p1, Lcdy;->b:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcdy;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 51
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/IndustryCategoryObject;->subList:Ljava/util/List;

    .line 52
    iget-object v2, p1, Lcdy;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcdz;

    .line 53
    .local v0, "industryModel":Lcdz;
    new-instance v1, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;-><init>()V

    .line 54
    .local v1, "object":Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/userbase/model/IndustryCategoryObject;->subList:Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->fromIdlModel(Lcdz;)Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 57
    .end local v0    # "industryModel":Lcdz;
    .end local v1    # "object":Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;
    :cond_0
    iget-object v2, p1, Lcdy;->c:Ljava/lang/String;

    iput-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/IndustryCategoryObject;->mediaId:Ljava/lang/String;

    .line 58
    iget-object v2, p1, Lcdy;->d:Ljava/lang/String;

    iput-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/IndustryCategoryObject;->color:Ljava/lang/String;

    .line 60
    :cond_1
    return-object p0
.end method

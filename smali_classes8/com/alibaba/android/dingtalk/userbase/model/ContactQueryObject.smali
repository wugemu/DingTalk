.class public Lcom/alibaba/android/dingtalk/userbase/model/ContactQueryObject;
.super Ljava/lang/Object;
.source "ContactQueryObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x441e3bf9b4e17bd7L


# instance fields
.field public accurateOrgName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public followerStaffIds:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public keyword:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public labelIds:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public offset:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public prevScene:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public scope:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public size:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toIDLModel(Lcom/alibaba/android/dingtalk/userbase/model/ContactQueryObject;)Lcdc;
    .locals 2
    .param p0, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/ContactQueryObject;

    .prologue
    .line 51
    if-nez p0, :cond_0

    .line 52
    const/4 v0, 0x0

    .line 66
    :goto_0
    return-object v0

    .line 55
    :cond_0
    new-instance v0, Lcdc;

    invoke-direct {v0}, Lcdc;-><init>()V

    .line 57
    .local v0, "model":Lcdc;
    iget v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/ContactQueryObject;->scope:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcdc;->a:Ljava/lang/Integer;

    .line 58
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/ContactQueryObject;->followerStaffIds:Ljava/util/List;

    iput-object v1, v0, Lcdc;->b:Ljava/util/List;

    .line 59
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/ContactQueryObject;->labelIds:Ljava/util/List;

    iput-object v1, v0, Lcdc;->c:Ljava/util/List;

    .line 60
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/ContactQueryObject;->keyword:Ljava/lang/String;

    iput-object v1, v0, Lcdc;->d:Ljava/lang/String;

    .line 61
    iget v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/ContactQueryObject;->offset:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcdc;->e:Ljava/lang/Integer;

    .line 62
    iget v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/ContactQueryObject;->size:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcdc;->f:Ljava/lang/Integer;

    .line 63
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/ContactQueryObject;->accurateOrgName:Ljava/lang/String;

    iput-object v1, v0, Lcdc;->g:Ljava/lang/String;

    .line 64
    iget v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/ContactQueryObject;->prevScene:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcdc;->h:Ljava/lang/Integer;

    goto :goto_0
.end method

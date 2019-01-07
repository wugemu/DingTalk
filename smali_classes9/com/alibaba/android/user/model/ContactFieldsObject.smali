.class public Lcom/alibaba/android/user/model/ContactFieldsObject;
.super Ljava/lang/Object;
.source "ContactFieldsObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x299d72c2acec68c6L


# instance fields
.field public customFields:Ljava/util/List;
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

.field public defaultFields:Ljava/util/List;
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

.field public showInviteChannel:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDLModel(Lfol;)Lcom/alibaba/android/user/model/ContactFieldsObject;
    .locals 2
    .param p0, "model"    # Lfol;

    .prologue
    .line 44
    if-nez p0, :cond_0

    .line 45
    const/4 v0, 0x0

    .line 53
    :goto_0
    return-object v0

    .line 48
    :cond_0
    new-instance v0, Lcom/alibaba/android/user/model/ContactFieldsObject;

    invoke-direct {v0}, Lcom/alibaba/android/user/model/ContactFieldsObject;-><init>()V

    .line 49
    .local v0, "object":Lcom/alibaba/android/user/model/ContactFieldsObject;
    iget-object v1, p0, Lfol;->a:Ljava/util/List;

    iput-object v1, v0, Lcom/alibaba/android/user/model/ContactFieldsObject;->defaultFields:Ljava/util/List;

    .line 50
    iget-object v1, p0, Lfol;->b:Ljava/util/List;

    iput-object v1, v0, Lcom/alibaba/android/user/model/ContactFieldsObject;->customFields:Ljava/util/List;

    .line 51
    iget-object v1, p0, Lfol;->c:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, v0, Lcom/alibaba/android/user/model/ContactFieldsObject;->showInviteChannel:Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lfol;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_1
.end method

.method public static toIDLModel(Lcom/alibaba/android/user/model/ContactFieldsObject;)Lfol;
    .locals 2
    .param p0, "object"    # Lcom/alibaba/android/user/model/ContactFieldsObject;

    .prologue
    .line 58
    if-nez p0, :cond_0

    .line 59
    const/4 v0, 0x0

    .line 67
    :goto_0
    return-object v0

    .line 62
    :cond_0
    new-instance v0, Lfol;

    invoke-direct {v0}, Lfol;-><init>()V

    .line 63
    .local v0, "model":Lfol;
    iget-object v1, p0, Lcom/alibaba/android/user/model/ContactFieldsObject;->defaultFields:Ljava/util/List;

    iput-object v1, v0, Lfol;->a:Ljava/util/List;

    .line 64
    iget-object v1, p0, Lcom/alibaba/android/user/model/ContactFieldsObject;->customFields:Ljava/util/List;

    iput-object v1, v0, Lfol;->b:Ljava/util/List;

    .line 65
    iget-boolean v1, p0, Lcom/alibaba/android/user/model/ContactFieldsObject;->showInviteChannel:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lfol;->c:Ljava/lang/Boolean;

    goto :goto_0
.end method

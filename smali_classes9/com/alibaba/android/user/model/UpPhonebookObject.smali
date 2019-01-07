.class public Lcom/alibaba/android/user/model/UpPhonebookObject;
.super Ljava/lang/Object;
.source "UpPhonebookObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public isDelete:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public mobile:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public name:Ljava/lang/String;
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

.method public static fromIdl(Lfqq;)Lcom/alibaba/android/user/model/UpPhonebookObject;
    .locals 3
    .param p0, "model"    # Lfqq;

    .prologue
    .line 35
    new-instance v0, Lcom/alibaba/android/user/model/UpPhonebookObject;

    invoke-direct {v0}, Lcom/alibaba/android/user/model/UpPhonebookObject;-><init>()V

    .line 36
    .local v0, "upPhonebookObject":Lcom/alibaba/android/user/model/UpPhonebookObject;
    if-eqz p0, :cond_0

    .line 37
    iget-object v1, p0, Lfqq;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/model/UpPhonebookObject;->name:Ljava/lang/String;

    .line 38
    iget-object v1, p0, Lfqq;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/model/UpPhonebookObject;->mobile:Ljava/lang/String;

    .line 39
    iget-object v1, p0, Lfqq;->c:Ljava/lang/Boolean;

    .line 1022
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 39
    iput-boolean v1, v0, Lcom/alibaba/android/user/model/UpPhonebookObject;->isDelete:Z

    .line 41
    :cond_0
    return-object v0
.end method

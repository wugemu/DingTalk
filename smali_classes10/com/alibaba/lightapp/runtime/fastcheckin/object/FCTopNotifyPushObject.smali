.class public Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCTopNotifyPushObject;
.super Ljava/lang/Object;
.source "FCTopNotifyPushObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x83d1db721f0af39L


# instance fields
.field public actionsObject:Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionsObject;

.field public content:Ljava/lang/String;

.field public iconUrl:Ljava/lang/String;

.field public interval:I

.field public lateTitle:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(Lhhm;)Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCTopNotifyPushObject;
    .locals 3
    .param p0, "model"    # Lhhm;

    .prologue
    .line 25
    if-nez p0, :cond_0

    .line 26
    const/4 v0, 0x0

    .line 37
    :goto_0
    return-object v0

    .line 29
    :cond_0
    new-instance v0, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCTopNotifyPushObject;

    invoke-direct {v0}, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCTopNotifyPushObject;-><init>()V

    .line 30
    .local v0, "object":Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCTopNotifyPushObject;
    iget-object v1, p0, Lhhm;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCTopNotifyPushObject;->title:Ljava/lang/String;

    .line 31
    iget-object v1, p0, Lhhm;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCTopNotifyPushObject;->content:Ljava/lang/String;

    .line 32
    iget-object v1, p0, Lhhm;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCTopNotifyPushObject;->iconUrl:Ljava/lang/String;

    .line 33
    iget-object v1, p0, Lhhm;->d:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionsObject;->from(Ljava/util/List;)Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionsObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCTopNotifyPushObject;->actionsObject:Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionsObject;

    .line 34
    iget-object v1, p0, Lhhm;->e:Ljava/lang/Integer;

    .line 1033
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 34
    iput v1, v0, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCTopNotifyPushObject;->interval:I

    .line 35
    iget-object v1, p0, Lhhm;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCTopNotifyPushObject;->lateTitle:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public isValid()Z
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCTopNotifyPushObject;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCTopNotifyPushObject;->content:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCTopNotifyPushObject;->iconUrl:Ljava/lang/String;

    .line 42
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCTopNotifyPushObject;->actionsObject:Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionsObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCTopNotifyPushObject;->actionsObject:Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionsObject;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionsObject;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

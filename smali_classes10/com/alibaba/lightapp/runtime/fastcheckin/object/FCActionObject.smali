.class public Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionObject;
.super Ljava/lang/Object;
.source "FCActionObject.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionObject$HiddenActionObject;
    }
.end annotation


# static fields
.field public static final ACTION_TYPE_NAV:Ljava/lang/String; = "1"

.field public static final ACTION_TYPE_REMIND_DELAY:Ljava/lang/String; = "4"

.field public static final ACTION_TYPE_RPC_CHECK_IN:Ljava/lang/String; = "3"

.field public static final ACTION_TYPE_RPC_CONFIRM:Ljava/lang/String; = "2"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x40a556a2ea407423L


# instance fields
.field public title:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method public static adapt(Lhpu;)Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionObject;
    .locals 2
    .param p0, "action"    # Lhpu;

    .prologue
    .line 59
    if-nez p0, :cond_0

    .line 60
    const/4 v0, 0x0

    .line 68
    :goto_0
    return-object v0

    .line 63
    :cond_0
    new-instance v0, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionObject;

    invoke-direct {v0}, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionObject;-><init>()V

    .line 64
    .local v0, "actionObject":Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionObject;
    iget-object v1, p0, Lhpu;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionObject;->title:Ljava/lang/String;

    .line 65
    iget-object v1, p0, Lhpu;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionObject;->url:Ljava/lang/String;

    .line 66
    iget-object v1, p0, Lhpu;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionObject;->type:Ljava/lang/String;

    goto :goto_0
.end method

.method public static from(Lhjr;)Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionObject;
    .locals 2
    .param p0, "model"    # Lhjr;

    .prologue
    .line 46
    if-nez p0, :cond_0

    .line 47
    const/4 v0, 0x0

    .line 55
    :goto_0
    return-object v0

    .line 50
    :cond_0
    new-instance v0, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionObject;

    invoke-direct {v0}, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionObject;-><init>()V

    .line 51
    .local v0, "actionObject":Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionObject;
    iget-object v1, p0, Lhjr;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionObject;->title:Ljava/lang/String;

    .line 52
    iget-object v1, p0, Lhjr;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionObject;->url:Ljava/lang/String;

    .line 53
    iget-object v1, p0, Lhjr;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionObject;->type:Ljava/lang/String;

    goto :goto_0
.end method

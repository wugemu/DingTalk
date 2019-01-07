.class public final Lftd$2;
.super Ljava/lang/Object;
.source "NameCardGuidePresenter.java"

# interfaces
.implements Lfuj$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lftd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lftd;


# direct methods
.method public constructor <init>(Lftd;)V
    .locals 0
    .param p1, "this$0"    # Lftd;

    .prologue
    .line 39
    iput-object p1, p0, Lftd$2;->a:Lftd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;)V
    .locals 1
    .param p1, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    .prologue
    .line 42
    iget-object v0, p0, Lftd$2;->a:Lftd;

    invoke-static {v0}, Lftd;->b(Lftd;)Lcli;

    move-result-object v0

    check-cast v0, Lfsx$b;

    invoke-interface {v0}, Lfsx$b;->f()V

    .line 43
    return-void
.end method

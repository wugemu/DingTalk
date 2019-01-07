.class public final Lfte$2;
.super Ljava/lang/Object;
.source "NameCardInfosPresenter.java"

# interfaces
.implements Lfuj$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfte;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfte;


# direct methods
.method public constructor <init>(Lfte;)V
    .locals 0
    .param p1, "this$0"    # Lfte;

    .prologue
    .line 50
    iput-object p1, p0, Lfte$2;->a:Lfte;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;)V
    .locals 1
    .param p1, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    .prologue
    .line 53
    iget-object v0, p0, Lfte$2;->a:Lfte;

    .line 1028
    iget-object v0, v0, Lfte;->a:Lfsy$a;

    .line 53
    invoke-interface {v0}, Lfsy$a;->a()V

    .line 54
    return-void
.end method

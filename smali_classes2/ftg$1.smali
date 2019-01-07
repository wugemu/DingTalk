.class public final Lftg$1;
.super Ljava/lang/Object;
.source "NameCardSharePresenter.java"

# interfaces
.implements Lfuj$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lftg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lftg;


# direct methods
.method public constructor <init>(Lftg;)V
    .locals 0
    .param p1, "this$0"    # Lftg;

    .prologue
    .line 45
    iput-object p1, p0, Lftg$1;->a:Lftg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;)V
    .locals 1
    .param p1, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    .prologue
    .line 48
    iget-object v0, p0, Lftg$1;->a:Lftg;

    .line 1035
    iget-object v0, v0, Lftg;->a:Lfta$a;

    .line 48
    invoke-interface {v0, p1}, Lfta$a;->a(Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;)V

    .line 49
    return-void
.end method

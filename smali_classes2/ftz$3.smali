.class public final Lftz$3;
.super Ljava/lang/Object;
.source "NameCardExchangePresenter.java"

# interfaces
.implements Lfuj$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lftz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lftz;


# direct methods
.method public constructor <init>(Lftz;)V
    .locals 0
    .param p1, "this$0"    # Lftz;

    .prologue
    .line 106
    iput-object p1, p0, Lftz$3;->a:Lftz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;)V
    .locals 1
    .param p1, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    .prologue
    .line 109
    iget-object v0, p0, Lftz$3;->a:Lftz;

    .line 1032
    iget-object v0, v0, Lftz;->a:Lfty$a;

    .line 109
    invoke-interface {v0, p1}, Lfty$a;->a(Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;)V

    .line 110
    return-void
.end method

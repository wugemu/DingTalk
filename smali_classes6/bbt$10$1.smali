.class final Lbbt$10$1;
.super Ljava/lang/Object;
.source "DingFloatWindowCenter.java"

# interfaces
.implements Lcjs$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbt$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbbt$10;


# direct methods
.method constructor <init>(Lbbt$10;)V
    .locals 0
    .param p1, "this$1"    # Lbbt$10;

    .prologue
    .line 375
    iput-object p1, p0, Lbbt$10$1;->a:Lbbt$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 378
    invoke-static {}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbbt$10$1;->a:Lbbt$10;

    iget-object v1, v1, Lbbt$10;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 383
    const/4 v0, 0x1

    invoke-static {v0}, Lbjz;->f(Z)V

    .line 384
    return-void
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 388
    return-void
.end method
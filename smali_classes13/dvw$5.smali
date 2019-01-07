.class final Ldvw$5;
.super Ljava/lang/Object;
.source "OneBoxCenter.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldvw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldvw;


# direct methods
.method constructor <init>(Ldvw;)V
    .locals 0
    .param p1, "this$0"    # Ldvw;

    .prologue
    .line 561
    iput-object p1, p0, Ldvw$5;->a:Ldvw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 564
    iget-object v0, p0, Ldvw$5;->a:Ldvw;

    invoke-static {v0}, Ldvw;->b(Ldvw;)Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "pref_key_box_guide"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 565
    return-void
.end method

.class final Lcom/alibaba/android/user/connection/activity/ConnectionActivity$17;
.super Ljava/lang/Object;
.source "ConnectionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->a(Landroid/app/Activity;Lfcd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lfcd;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lfcd;)V
    .locals 0

    .prologue
    .line 448
    iput-object p1, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$17;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$17;->b:Lfcd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v3, 0x125

    .line 451
    if-nez p2, :cond_1

    .line 452
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$17;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->a(Landroid/app/Activity;)V

    .line 460
    :cond_0
    :goto_0
    return-void

    .line 453
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_4

    .line 454
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$17;->b:Lfcd;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$17;->b:Lfcd;

    .line 1055
    iget-object v1, v0, Lfcd;->a:Landroid/app/Activity;

    sget-object v2, Lfcd;->b:[Ljava/lang/String;

    invoke-static {v1, v2}, Lbyy;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1056
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    iget-object v0, v0, Lfcd;->a:Landroid/app/Activity;

    const/16 v2, 0xbb8

    invoke-virtual {v1, v0, v3, v2}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;II)V

    goto :goto_0

    .line 1058
    :cond_2
    iget-object v1, v0, Lfcd;->a:Landroid/app/Activity;

    sget-object v2, Lfcd;->b:[Ljava/lang/String;

    invoke-static {v1, v2}, Lbyy;->a(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1059
    iget-object v1, v0, Lfcd;->a:Landroid/app/Activity;

    sget-object v2, Lfcd;->b:[Ljava/lang/String;

    new-instance v3, Lfcd$a;

    iget-object v0, v0, Lfcd;->a:Landroid/app/Activity;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lfcd$a;-><init>(Landroid/app/Activity;B)V

    invoke-static {v1, v2, v3}, Lbyy;->a(Landroid/app/Activity;[Ljava/lang/String;Lbyx;)V

    goto :goto_0

    .line 1061
    :cond_3
    iget-object v0, v0, Lfcd;->a:Landroid/app/Activity;

    sget-object v1, Lfcd;->b:[Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcd;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 457
    :cond_4
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$17;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->b(Landroid/app/Activity;)V

    goto :goto_0
.end method

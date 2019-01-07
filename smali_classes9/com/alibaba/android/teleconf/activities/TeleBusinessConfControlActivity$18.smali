.class final Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity$18;
.super Ljava/lang/Object;
.source "TeleBusinessConfControlActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;

    .prologue
    .line 432
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity$18;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 435
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity$18;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 436
    const-string/jumbo v1, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;->e()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Video conf can not be modified"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    :goto_0
    return-void

    .line 439
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity$18;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;->e(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;)Leum;

    move-result-object v1

    invoke-virtual {v1, p3}, Leum;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;

    .line 440
    .local v0, "userObject":Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->b:Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;->ordinal()I

    move-result v1

    sget-object v2, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;->TailType:Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;

    invoke-virtual {v2}, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 441
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity$18;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;

    const/16 v2, 0x65

    invoke-static {v1, v2}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;I)I

    .line 445
    :goto_1
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity$18;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;->f(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;)V

    goto :goto_0

    .line 443
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity$18;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;

    const/16 v2, 0x64

    invoke-static {v1, v2}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;I)I

    goto :goto_1
.end method

.class final Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$10;
.super Ljava/lang/Object;
.source "TeleConfSettingActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$10;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;

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
    .line 267
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$10;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->i(Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;)Leum;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 268
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$10;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->i(Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;)Leum;

    move-result-object v1

    invoke-virtual {v1, p3}, Leum;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;

    .line 269
    .local v0, "userObject":Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;
    iget-object v1, v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->b:Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;->ordinal()I

    move-result v1

    sget-object v2, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;->TailType:Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;

    invoke-virtual {v2}, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 270
    const-string/jumbo v1, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->a()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Click tail"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$10;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;Z)V

    .line 277
    .end local v0    # "userObject":Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;
    :cond_0
    :goto_0
    return-void

    .line 273
    .restart local v0    # "userObject":Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;
    :cond_1
    const-string/jumbo v1, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->a()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Click item"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$10;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;Z)V

    goto :goto_0
.end method

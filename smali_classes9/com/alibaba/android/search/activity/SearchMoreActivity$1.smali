.class final Lcom/alibaba/android/search/activity/SearchMoreActivity$1;
.super Ljava/lang/Object;
.source "SearchMoreActivity.java"

# interfaces
.implements Leny$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/activity/SearchMoreActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/activity/SearchMoreActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/activity/SearchMoreActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/activity/SearchMoreActivity;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity$1;->a:Lcom/alibaba/android/search/activity/SearchMoreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0
    .param p1, "err"    # I

    .prologue
    .line 104
    return-void
.end method

.method public final a(Lhlp;)V
    .locals 2
    .param p1, "page"    # Lhlp;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 98
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity$1;->a:Lcom/alibaba/android/search/activity/SearchMoreActivity;

    invoke-static {v0}, Lcom/alibaba/android/search/activity/SearchMoreActivity;->a(Lcom/alibaba/android/search/activity/SearchMoreActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-interface {p1}, Lhlp;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 99
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lhll;)V
    .locals 3
    .param p1, "funName"    # Ljava/lang/String;
    .param p2, "param"    # Lcom/alibaba/fastjson/JSONObject;
    .param p3, "callback"    # Lhll;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 108
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 109
    .local v0, "ret":Lcom/alibaba/fastjson/JSONObject;
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 123
    :goto_1
    invoke-interface {p3, v0}, Lhll;->a(Lcom/alibaba/fastjson/JSONObject;)V

    .line 124
    return-void

    .line 109
    :sswitch_0
    const-string/jumbo v2, "blurInput"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "getKeyword"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "focusInput"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v2, "getMyOpenId"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    .line 111
    :pswitch_0
    iget-object v1, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity$1;->a:Lcom/alibaba/android/search/activity/SearchMoreActivity;

    invoke-static {v1}, Lcom/alibaba/android/search/activity/SearchMoreActivity;->b(Lcom/alibaba/android/search/activity/SearchMoreActivity;)V

    goto :goto_1

    .line 114
    :pswitch_1
    iget-object v1, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity$1;->a:Lcom/alibaba/android/search/activity/SearchMoreActivity;

    invoke-static {v1}, Lcom/alibaba/android/search/activity/SearchMoreActivity;->c(Lcom/alibaba/android/search/activity/SearchMoreActivity;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 115
    goto :goto_1

    .line 117
    :pswitch_2
    iget-object v1, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity$1;->a:Lcom/alibaba/android/search/activity/SearchMoreActivity;

    invoke-static {v1}, Lcom/alibaba/android/search/activity/SearchMoreActivity;->d(Lcom/alibaba/android/search/activity/SearchMoreActivity;)V

    goto :goto_1

    .line 120
    :pswitch_3
    iget-object v1, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity$1;->a:Lcom/alibaba/android/search/activity/SearchMoreActivity;

    invoke-static {v1}, Lcom/alibaba/android/search/activity/SearchMoreActivity;->e(Lcom/alibaba/android/search/activity/SearchMoreActivity;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    goto :goto_1

    .line 109
    nop

    :sswitch_data_0
    .sparse-switch
        -0x76d4a05d -> :sswitch_0
        -0x3f4da62e -> :sswitch_2
        0xd4259b3 -> :sswitch_1
        0x44b50b47 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

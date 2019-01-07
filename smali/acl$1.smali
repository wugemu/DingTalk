.class final Lacl$1;
.super Ljava/lang/Object;
.source "NewMailManager.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lacl;


# direct methods
.method constructor <init>(Lacl;)V
    .locals 0
    .param p1, "this$0"    # Lacl;

    .prologue
    .line 73
    iput-object p1, p0, Lacl$1;->a:Lacl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 7
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 76
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 77
    const-string/jumbo v3, "NewMailManager"

    const-string/jumbo v4, "onSharedPreferenceChanged fail for key is empty"

    invoke-static {v3, v4}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    const-string/jumbo v3, "pref_key_mail_notification"

    invoke-static {p2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 83
    iget-object v3, p0, Lacl$1;->a:Lacl;

    invoke-virtual {v3}, Lacl;->a()Z

    move-result v2

    .line 84
    .local v2, "isOn":Z
    iget-object v3, p0, Lacl$1;->a:Lacl;

    invoke-static {v3}, Lacl;->a(Lacl;)Z

    move-result v3

    if-eq v3, v2, :cond_0

    .line 85
    iget-object v3, p0, Lacl$1;->a:Lacl;

    invoke-static {v3, v2}, Lacl;->a(Lacl;Z)Z

    .line 87
    iget-object v3, p0, Lacl$1;->a:Lacl;

    invoke-static {v3}, Lacl;->b(Lacl;)V

    goto :goto_0

    .line 89
    .end local v2    # "isOn":Z
    :cond_2
    const-string/jumbo v3, "pref_key_account_notification_enable:"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 90
    const-string/jumbo v3, ":"

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "array":[Ljava/lang/String;
    if-eqz v1, :cond_3

    array-length v3, v1

    const/4 v4, 0x2

    if-lt v3, v4, :cond_3

    .line 93
    aget-object v0, v1, v5

    .line 94
    .local v0, "accountName":Ljava/lang/String;
    iget-object v3, p0, Lacl$1;->a:Lacl;

    invoke-virtual {v3, v0}, Lacl;->a(Ljava/lang/String;)Z

    move-result v2

    .line 95
    .restart local v2    # "isOn":Z
    iget-object v3, p0, Lacl$1;->a:Lacl;

    invoke-static {v3}, Lacl;->c(Lacl;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v3, p0, Lacl$1;->a:Lacl;

    invoke-static {v3, v0, v2}, Lacl;->a(Lacl;Ljava/lang/String;Z)V

    goto :goto_0

    .line 98
    .end local v0    # "accountName":Ljava/lang/String;
    .end local v2    # "isOn":Z
    :cond_3
    const-string/jumbo v3, "NewMailManager"

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "onSharedPreferenceChanged failed for split return null, key: "

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, p2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

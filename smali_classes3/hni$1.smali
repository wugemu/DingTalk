.class final Lhni$1;
.super Ljava/lang/Object;
.source "MiniAppActivityProviderImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhni;->a(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/Class;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Ljava/lang/Class;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lhni;


# direct methods
.method constructor <init>(Lhni;Landroid/content/Intent;Ljava/lang/Class;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lhni;

    .prologue
    .line 166
    iput-object p1, p0, Lhni$1;->d:Lhni;

    iput-object p2, p0, Lhni$1;->a:Landroid/content/Intent;

    iput-object p3, p0, Lhni$1;->b:Ljava/lang/Class;

    iput-object p4, p0, Lhni$1;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 170
    :try_start_0
    invoke-static {}, Lhlq;->a()Lhlq;

    move-result-object v9

    .line 1344
    iget-object v0, v9, Lhlq;->a:Landroid/app/Activity;

    .line 171
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_8

    .line 172
    iget-object v9, p0, Lhni$1;->a:Landroid/content/Intent;

    iget-object v10, p0, Lhni$1;->b:Ljava/lang/Class;

    invoke-virtual {v9, v0, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 174
    iget-object v9, p0, Lhni$1;->a:Landroid/content/Intent;

    const-string/jumbo v10, "mainTask"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 175
    .local v7, "isMainTask":Z
    iget-object v9, p0, Lhni$1;->a:Landroid/content/Intent;

    const-string/jumbo v10, "appId"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 176
    .local v4, "appId":Ljava/lang/String;
    invoke-static {}, Lhlq;->a()Lhlq;

    move-result-object v9

    .line 1358
    iget-object v10, v9, Lhlq;->d:Ljava/util/Map;

    if-eqz v10, :cond_3

    iget-object v10, v9, Lhlq;->d:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    .line 1359
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 1360
    iget-object v9, v9, Lhlq;->d:Ljava/util/Map;

    invoke-interface {v9, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    .line 1361
    if-eqz v9, :cond_2

    .line 1362
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 177
    .local v6, "isLoading":Z
    :goto_0
    if-eqz v6, :cond_0

    .line 178
    invoke-static {}, Lhlq;->a()Lhlq;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v4, v10}, Lhlq;->a(Ljava/lang/String;Z)V

    .line 180
    :cond_0
    if-eqz v7, :cond_4

    .line 181
    iget-object v9, p0, Lhni$1;->a:Landroid/content/Intent;

    invoke-virtual {v0, v9}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 182
    if-eqz v6, :cond_1

    .line 183
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 215
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v4    # "appId":Ljava/lang/String;
    .end local v6    # "isLoading":Z
    .end local v7    # "isMainTask":Z
    :cond_1
    :goto_1
    return-void

    .line 1364
    .restart local v0    # "activity":Landroid/app/Activity;
    .restart local v4    # "appId":Ljava/lang/String;
    .restart local v7    # "isMainTask":Z
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 1368
    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 188
    .restart local v6    # "isLoading":Z
    :cond_4
    iget-object v9, p0, Lhni$1;->a:Landroid/content/Intent;

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lhom;->a(Landroid/content/Intent;ZI)Landroid/util/Pair;

    move-result-object v3

    .line 190
    .local v3, "animPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v3, :cond_7

    .line 191
    iget-object v9, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 192
    .local v1, "animIn":I
    iget-object v9, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 193
    .local v2, "animOut":I
    if-eqz v6, :cond_5

    .line 194
    const/4 v1, 0x0

    .line 195
    const/4 v2, 0x0

    .line 197
    :cond_5
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x10

    if-lt v9, v10, :cond_6

    .line 198
    invoke-static {v0, v1, v2}, Lce;->a(Landroid/content/Context;II)Lce;

    move-result-object v5

    .line 199
    .local v5, "compat":Lce;
    iget-object v9, p0, Lhni$1;->a:Landroid/content/Intent;

    invoke-virtual {v5}, Lce;->a()Landroid/os/Bundle;

    move-result-object v10

    invoke-static {v0, v9, v10}, Lcd;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 212
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "animIn":I
    .end local v2    # "animOut":I
    .end local v3    # "animPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v4    # "appId":Ljava/lang/String;
    .end local v5    # "compat":Lce;
    .end local v6    # "isLoading":Z
    .end local v7    # "isMainTask":Z
    :catch_0
    move-exception v8

    .line 213
    .local v8, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v9, "MiniAppActivityProviderImpl"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string/jumbo v12, "doStartActivity error: "

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 3071
    const-string/jumbo v11, "mini_app"

    invoke-static {v11, v9, v10}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 201
    .end local v8    # "throwable":Ljava/lang/Throwable;
    .restart local v0    # "activity":Landroid/app/Activity;
    .restart local v1    # "animIn":I
    .restart local v2    # "animOut":I
    .restart local v3    # "animPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v4    # "appId":Ljava/lang/String;
    .restart local v6    # "isLoading":Z
    .restart local v7    # "isMainTask":Z
    :cond_6
    :try_start_1
    iget-object v9, p0, Lhni$1;->a:Landroid/content/Intent;

    invoke-virtual {v0, v9}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 202
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_1

    .line 205
    .end local v1    # "animIn":I
    .end local v2    # "animOut":I
    :cond_7
    iget-object v9, p0, Lhni$1;->a:Landroid/content/Intent;

    invoke-virtual {v0, v9}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 208
    .end local v3    # "animPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v4    # "appId":Ljava/lang/String;
    .end local v6    # "isLoading":Z
    .end local v7    # "isMainTask":Z
    :cond_8
    iget-object v9, p0, Lhni$1;->a:Landroid/content/Intent;

    iget-object v10, p0, Lhni$1;->c:Landroid/content/Context;

    iget-object v11, p0, Lhni$1;->b:Ljava/lang/Class;

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 209
    iget-object v9, p0, Lhni$1;->c:Landroid/content/Context;

    iget-object v10, p0, Lhni$1;->a:Landroid/content/Intent;

    invoke-virtual {v9, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 210
    const-string/jumbo v9, "MiniAppActivityProviderImpl"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string/jumbo v12, "doStartActivity"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string/jumbo v12, "getActivity null"

    aput-object v12, v10, v11

    .line 2082
    const-string/jumbo v11, "mini_task"

    invoke-static {v11, v9, v10}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.class public final Lesr$4;
.super Ljava/lang/Object;
.source "DingSearchHistoryManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lesr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/alibaba/wukong/Callback;

.field final synthetic c:Lesr;


# direct methods
.method public constructor <init>(Lesr;Landroid/content/Context;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lesr;

    .prologue
    .line 149
    iput-object p1, p0, Lesr$4;->c:Lesr;

    iput-object p2, p0, Lesr$4;->a:Landroid/content/Context;

    iput-object p3, p0, Lesr$4;->b:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 152
    iget-object v2, p0, Lesr$4;->a:Landroid/content/Context;

    iget-object v3, p0, Lesr$4;->c:Lesr;

    invoke-static {v3}, Lesr;->a(Lesr;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 153
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 154
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 155
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 156
    iget-object v2, p0, Lesr$4;->b:Lcom/alibaba/wukong/Callback;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/alibaba/wukong/CallbackUtils;->onSuccess(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    .line 157
    return-void
.end method

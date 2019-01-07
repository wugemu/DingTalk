.class final Laun$23;
.super Ljava/lang/Object;
.source "CalendarDrawerContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laun;


# direct methods
.method constructor <init>(Laun;)V
    .locals 0
    .param p1, "this$0"    # Laun;

    .prologue
    .line 157
    iput-object p1, p0, Laun$23;->a:Laun;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 1144
    const-string/jumbo v0, "ding_list_search_click"

    invoke-static {v0}, Lavw;->b(Ljava/lang/String;)V

    .line 161
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v0

    iget-object v1, p0, Laun$23;->a:Laun;

    .line 2077
    iget-object v1, v1, Laun;->a:Landroid/app/Activity;

    .line 161
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->c(Landroid/content/Context;)V

    .line 162
    return-void
.end method

.class public final Lcom/alibaba/lightapp/runtime/NuvaWebView$a;
.super Ljava/lang/Object;
.source "NuvaWebView.java"

# interfaces
.implements Lhde$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/NuvaWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/NuvaWebView;


# direct methods
.method public constructor <init>(Lcom/alibaba/lightapp/runtime/NuvaWebView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/NuvaWebView;

    .prologue
    .line 710
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/NuvaWebView$a;->a:Lcom/alibaba/lightapp/runtime/NuvaWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 9
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "msgs"    # [Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 756
    sget-boolean v2, Lcic;->a:Z

    if-nez v2, :cond_0

    invoke-static {}, Lcom/alibaba/lightapp/runtime/NuvaWebView;->g()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1739
    :cond_0
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    .line 1740
    if-eqz p2, :cond_2

    .line 1741
    array-length v5, p2

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v6, p2, v2

    .line 1742
    if-eqz v6, :cond_1

    .line 1743
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1744
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1745
    const-string/jumbo v7, "\""

    const-string/jumbo v8, " "

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1746
    invoke-virtual {v4, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1741
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1752
    :cond_2
    invoke-virtual {v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 758
    .local v0, "msg":Ljava/lang/String;
    const-string/jumbo v2, "(function() { var msg = \"[dingtalk console] %s\"; if (console.%s) { console.%s(msg); } else { console.log(msg); }})();"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    const/4 v3, 0x1

    aput-object p1, v4, v3

    const/4 v3, 0x2

    aput-object p1, v4, v3

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 761
    .local v1, "statement":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/NuvaWebView$a;->a:Lcom/alibaba/lightapp/runtime/NuvaWebView;

    invoke-virtual {v2, v1}, Lcom/alibaba/lightapp/runtime/NuvaWebView;->c(Ljava/lang/String;)V

    .line 763
    .end local v0    # "msg":Ljava/lang/String;
    .end local v1    # "statement":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public final varargs a([Ljava/lang/Object;)V
    .locals 1
    .param p1, "msgs"    # [Ljava/lang/Object;

    .prologue
    .line 724
    const-string/jumbo v0, "info"

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/lightapp/runtime/NuvaWebView$a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 725
    return-void
.end method

.method public final varargs b([Ljava/lang/Object;)V
    .locals 1
    .param p1, "msgs"    # [Ljava/lang/Object;

    .prologue
    .line 734
    const-string/jumbo v0, "error"

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/lightapp/runtime/NuvaWebView$a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 735
    return-void
.end method

.method public final varargs c([Ljava/lang/Object;)V
    .locals 1
    .param p1, "msgs"    # [Ljava/lang/Object;

    .prologue
    .line 729
    const-string/jumbo v0, "warn"

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/lightapp/runtime/NuvaWebView$a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 730
    return-void
.end method

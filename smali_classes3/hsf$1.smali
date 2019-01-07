.class final Lhsf$1;
.super Ljava/lang/Object;
.source "RuntimeWMLSDKInstance.java"

# interfaces
.implements Lhqe$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhsf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhsf;


# direct methods
.method constructor <init>(Lhsf;)V
    .locals 0
    .param p1, "this$0"    # Lhsf;

    .prologue
    .line 42
    iput-object p1, p0, Lhsf$1;->a:Lhsf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 45
    iget-object v0, p0, Lhsf$1;->a:Lhsf;

    .line 1139
    sget-boolean v0, Lcic;->a:Z

    if-eqz v0, :cond_0

    .line 1140
    const-string/jumbo v0, "RimetWebView"

    const-string/jumbo v2, "------------------ DEBUG ------------------"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    :goto_0
    return v1

    .line 1144
    :cond_0
    const/4 v2, 0x0

    .line 1146
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1149
    invoke-static {p1}, Lhsf;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1151
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1153
    sget-object v0, Lhru;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1155
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1156
    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    .line 45
    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

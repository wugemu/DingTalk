.class final Lacu$e;
.super Ljava/lang/Object;
.source "CMailAllSearchAdapter.java"

# interfaces
.implements Lrs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrs",
        "<",
        "Lcom/alibaba/alimei/sdk/model/MailContactSearchModel;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lacu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lacu;)V
    .locals 1
    .param p1, "adapter"    # Lacu;

    .prologue
    .line 778
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 779
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lacu$e;->a:Ljava/lang/ref/WeakReference;

    .line 780
    return-void
.end method

.method synthetic constructor <init>(Lacu;B)V
    .locals 0
    .param p1, "x0"    # Lacu;

    .prologue
    .line 774
    invoke-direct {p0, p1}, Lacu$e;-><init>(Lacu;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 788
    sget v0, Laxo$g;->cmail_contact_search_item:I

    return v0
.end method

.method public final a(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 793
    const/4 v0, 0x0

    return-object v0
.end method

.method public final synthetic a(Lrr;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/16 v5, 0x32

    .line 774
    check-cast p2, Lcom/alibaba/alimei/sdk/model/MailContactSearchModel;

    .line 2783
    iget-object v0, p0, Lacu$e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lacu;

    .line 1799
    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 1800
    :cond_0
    :goto_0
    return-void

    .line 1803
    :cond_1
    iget-object v1, p2, Lcom/alibaba/alimei/sdk/model/MailContactSearchModel;->address:Ljava/lang/String;

    .line 1804
    iget-object v2, p2, Lcom/alibaba/alimei/sdk/model/MailContactSearchModel;->alias:Ljava/lang/String;

    invoke-static {v1, v2}, Laiv;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1809
    if-eqz v2, :cond_2

    .line 1810
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1813
    :cond_2
    if-eqz v1, :cond_3

    .line 1814
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 3096
    :cond_3
    iget-object v3, p1, Lrr;->a:Landroid/content/Context;

    .line 1818
    invoke-static {v0}, Lacu;->a(Lacu;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4, v5}, Lcos;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 1819
    invoke-static {v0}, Lacu;->a(Lacu;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v1, v0, v5}, Lcos;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1821
    sget v3, Laxo$f;->name:I

    invoke-virtual {p1, v3, v4}, Lrr;->a(ILjava/lang/CharSequence;)Lrr;

    .line 1822
    sget v3, Laxo$f;->address:I

    invoke-virtual {p1, v3, v0}, Lrr;->a(ILjava/lang/CharSequence;)Lrr;

    .line 1824
    sget v0, Laxo$f;->avatar:I

    .line 3100
    invoke-virtual {p1, v0}, Lrr;->a(I)Landroid/view/View;

    move-result-object v0

    .line 1824
    check-cast v0, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;

    .line 1825
    invoke-static {v1, v2}, Laiv;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

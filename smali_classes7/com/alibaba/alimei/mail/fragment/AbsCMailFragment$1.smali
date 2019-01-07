.class final Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment$1;
.super Ljava/lang/Object;
.source "AbsCMailFragment.java"

# interfaces
.implements Lafo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lafo",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lafn;Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 81
    .line 2084
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->h()Ljava/util/List;

    move-result-object v0

    .line 2136
    iget v1, p1, Lafn;->a:I

    .line 2086
    sparse-switch v1, :sswitch_data_0

    .line 2119
    :goto_0
    return-void

    .line 2088
    :sswitch_0
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;

    invoke-static {v1, v0, v4}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->a(Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;Ljava/util/List;Z)V

    .line 2089
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;

    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->a(Z)V

    goto :goto_0

    .line 2092
    :sswitch_1
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;

    invoke-static {v1, v0, v3}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->a(Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;Ljava/util/List;Z)V

    .line 2093
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;

    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->a(Z)V

    goto :goto_0

    .line 2096
    :sswitch_2
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;

    invoke-static {v1, v0}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->a(Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;Ljava/util/List;)V

    .line 2097
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;

    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->a(Z)V

    goto :goto_0

    .line 2100
    :sswitch_3
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;

    invoke-static {v1, v0}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->b(Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;Ljava/util/List;)V

    .line 2101
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;

    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->a(Z)V

    goto :goto_0

    .line 2349
    :sswitch_4
    const-string/jumbo v1, "mail_editmode_markfav"

    invoke-static {v1}, Lafe;->a(Ljava/lang/String;)V

    .line 2105
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;

    const-string/jumbo v2, "6"

    invoke-static {v1, v0, v2, v4}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->a(Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;Ljava/util/List;Ljava/lang/String;Z)V

    .line 2106
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;

    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->a(Z)V

    goto :goto_0

    .line 2109
    :sswitch_5
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;

    const-string/jumbo v2, "6"

    invoke-static {v1, v0, v2, v3}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->a(Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;Ljava/util/List;Ljava/lang/String;Z)V

    .line 2110
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;

    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->a(Z)V

    goto :goto_0

    .line 2113
    :sswitch_6
    invoke-static {}, Lacg;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2114
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->a(Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;)V

    goto :goto_0

    .line 2116
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;

    const-string/jumbo v2, "1"

    invoke-static {v1, v0, v2, v4}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->a(Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;Ljava/util/List;Ljava/lang/String;Z)V

    .line 2117
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;

    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->a(Z)V

    goto :goto_0

    .line 2122
    :sswitch_7
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;

    const-string/jumbo v2, "1"

    invoke-static {v1, v0, v2, v3}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->a(Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;Ljava/util/List;Ljava/lang/String;Z)V

    .line 2123
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;

    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->a(Z)V

    goto/16 :goto_0

    .line 2086
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x2 -> :sswitch_3
        0x11 -> :sswitch_0
        0x12 -> :sswitch_1
        0x2e -> :sswitch_4
        0x2f -> :sswitch_5
        0x34 -> :sswitch_6
        0x36 -> :sswitch_7
    .end sparse-switch
.end method

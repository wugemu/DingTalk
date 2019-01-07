.class final Lfvo$1;
.super Ljava/lang/Object;
.source "OrgHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfvo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lclb;

.field final synthetic b:Lfvo;


# direct methods
.method constructor <init>(Lfvo;Lclb;)V
    .locals 0
    .param p1, "this$0"    # Lfvo;

    .prologue
    .line 81
    iput-object p1, p0, Lfvo$1;->b:Lfvo;

    iput-object p2, p0, Lfvo$1;->a:Lclb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/16 v4, 0x3e9

    .line 84
    iget-object v1, p0, Lfvo$1;->a:Lclb;

    iget-object v1, v1, Lclb;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lclc;

    .line 86
    .local v0, "model":Lclc;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lclc;->a:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lclc;->b:[B

    if-eqz v2, :cond_0

    .line 87
    iget-object v2, v0, Lclc;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 91
    :pswitch_1
    invoke-static {}, Lfxi;->a()Lfxi;

    move-result-object v2

    invoke-virtual {v2}, Lfxi;->b()V

    .line 92
    iget-object v2, p0, Lfvo$1;->b:Lfvo;

    const/4 v3, 0x0

    invoke-static {v2, v3, v4}, Lfvo;->a(Lfvo;Lclc;I)V

    goto :goto_0

    .line 96
    :pswitch_2
    invoke-static {}, Lfxi;->a()Lfxi;

    move-result-object v2

    invoke-virtual {v2}, Lfxi;->b()V

    .line 97
    iget-object v2, p0, Lfvo$1;->b:Lfvo;

    invoke-static {v2, v0, v4}, Lfvo;->a(Lfvo;Lclc;I)V

    goto :goto_0

    .line 101
    :pswitch_3
    invoke-static {}, Lfxi;->a()Lfxi;

    move-result-object v2

    invoke-virtual {v2}, Lfxi;->b()V

    .line 102
    iget-object v2, p0, Lfvo$1;->b:Lfvo;

    const/16 v3, 0x3ea

    invoke-static {v2, v0, v3}, Lfvo;->a(Lfvo;Lclc;I)V

    goto :goto_0

    .line 106
    :pswitch_4
    invoke-static {}, Lfxi;->a()Lfxi;

    move-result-object v2

    invoke-virtual {v2}, Lfxi;->b()V

    .line 107
    iget-object v2, p0, Lfvo$1;->b:Lfvo;

    const/16 v3, 0x3ee

    invoke-static {v2, v0, v3}, Lfvo;->b(Lfvo;Lclc;I)V

    goto :goto_0

    .line 110
    :pswitch_5
    iget-object v2, p0, Lfvo$1;->b:Lfvo;

    invoke-static {v2, v0}, Lfvo;->a(Lfvo;Lclc;)V

    goto :goto_0

    .line 122
    .end local v0    # "model":Lclc;
    :cond_1
    return-void

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

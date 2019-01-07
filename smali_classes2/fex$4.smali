.class final Lfex$4;
.super Ljava/lang/Object;
.source "LoadPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfex;


# direct methods
.method constructor <init>(Lfex;)V
    .locals 0
    .param p1, "this$0"    # Lfex;

    .prologue
    .line 146
    iput-object p1, p0, Lfex$4;->a:Lfex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/16 v6, 0xa

    .line 149
    invoke-static {}, Lfcc;->a()I

    move-result v5

    .line 150
    .local v5, "scrollPosition":I
    rem-int/lit8 v0, v5, 0xa

    .line 151
    .local v0, "leftOver":I
    if-lez v0, :cond_1

    rsub-int/lit8 v2, v0, 0xa

    .line 153
    .local v2, "padding":I
    :goto_0
    add-int v3, v2, v5

    .line 155
    .local v3, "pageRound":I
    if-ge v3, v6, :cond_0

    move v3, v6

    .line 157
    :cond_0
    invoke-static {}, Lfdw;->a()Lfdw;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "createAt DESC"

    invoke-virtual {v6, v7, v8}, Lfdw;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 158
    .local v4, "postObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;>;"
    invoke-static {v4}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 160
    iget-object v6, p0, Lfex$4;->a:Lfex;

    iget-object v6, v6, Lfex;->b:Lfeu;

    invoke-virtual {v6}, Lfeu;->c()V

    .line 161
    iget-object v6, p0, Lfex$4;->a:Lfex;

    invoke-static {v6}, Lfex;->a(Lfex;)V

    .line 185
    :goto_1
    return-void

    .line 151
    .end local v2    # "padding":I
    .end local v3    # "pageRound":I
    .end local v4    # "postObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;>;"
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 166
    .restart local v2    # "padding":I
    .restart local v3    # "pageRound":I
    .restart local v4    # "postObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;>;"
    :cond_2
    iget-object v6, p0, Lfex$4;->a:Lfex;

    iget-object v6, v6, Lfex;->b:Lfeu;

    .line 1131
    iput v3, v6, Lfeu;->e:I

    .line 168
    invoke-static {}, Lfcc;->b()I

    move-result v1

    .line 170
    .local v1, "offsetY":I
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v6

    new-instance v7, Lfex$4$1;

    invoke-direct {v7, p0, v4, v5, v1}, Lfex$4$1;-><init>(Lfex$4;Ljava/util/List;II)V

    invoke-virtual {v6, v7}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.class final Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$7;
.super Ljava/lang/Object;
.source "SessionFragmentImplV2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic b:Z

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;Lcom/alibaba/wukong/im/Conversation;ZLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    .prologue
    .line 1757
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$7;->d:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$7;->a:Lcom/alibaba/wukong/im/Conversation;

    iput-boolean p3, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$7;->b:Z

    iput-object p4, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$7;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 1761
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$7;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v0

    if-eq v0, v4, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$7;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 1763
    if-nez p2, :cond_1

    .line 1764
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$7;->d:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$7;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->c(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;Lcom/alibaba/wukong/im/Conversation;)V

    .line 1820
    :cond_0
    :goto_0
    return-void

    .line 1765
    :cond_1
    if-ne p2, v5, :cond_2

    .line 1766
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$7;->d:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$7;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->d(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;Lcom/alibaba/wukong/im/Conversation;)V

    goto :goto_0

    .line 1767
    :cond_2
    if-ne p2, v4, :cond_0

    .line 1768
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$7;->b:Z

    if-eqz v0, :cond_0

    .line 1769
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$7;->d:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$7;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->e(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;Lcom/alibaba/wukong/im/Conversation;)V

    goto :goto_0

    .line 1772
    :cond_3
    invoke-static {}, Ldks;->b()Ldks;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$7;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v0, v1}, Ldks;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$7;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Libb;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1773
    :cond_4
    if-nez p2, :cond_5

    .line 1774
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$7;->d:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$7;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->f(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;Lcom/alibaba/wukong/im/Conversation;)V

    goto :goto_0

    .line 1775
    :cond_5
    if-ne p2, v5, :cond_0

    .line 1776
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$7;->b:Z

    if-eqz v0, :cond_0

    .line 1777
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$7;->d:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$7;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->e(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;Lcom/alibaba/wukong/im/Conversation;)V

    goto :goto_0

    .line 1780
    :cond_6
    invoke-static {}, Ldks;->b()Ldks;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$7;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v0, v1}, Ldks;->b(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$7;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Libb;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1781
    :cond_7
    if-nez p2, :cond_8

    .line 1782
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$7;->d:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$7;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->f(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;Lcom/alibaba/wukong/im/Conversation;)V

    goto :goto_0

    .line 1783
    :cond_8
    if-ne p2, v5, :cond_0

    .line 1784
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$7;->d:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$7;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->d(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;Lcom/alibaba/wukong/im/Conversation;)V

    goto :goto_0

    .line 1786
    :cond_9
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$7;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v0

    if-eq v0, v4, :cond_c

    .line 1788
    if-nez p2, :cond_a

    .line 1789
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$7;->d:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$7;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->d(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;Lcom/alibaba/wukong/im/Conversation;)V

    goto/16 :goto_0

    .line 1790
    :cond_a
    if-ne p2, v5, :cond_b

    .line 1791
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$7;->d:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$7;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->f(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;Lcom/alibaba/wukong/im/Conversation;)V

    goto/16 :goto_0

    .line 1792
    :cond_b
    if-ne p2, v4, :cond_0

    .line 1793
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$7;->b:Z

    if-eqz v0, :cond_0

    .line 1794
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$7;->d:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$7;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->e(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;Lcom/alibaba/wukong/im/Conversation;)V

    goto/16 :goto_0

    .line 1799
    :cond_c
    if-nez p2, :cond_d

    .line 1800
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$7;->d:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$7;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->d(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;Lcom/alibaba/wukong/im/Conversation;)V

    goto/16 :goto_0

    .line 1801
    :cond_d
    if-ne p2, v5, :cond_e

    .line 1802
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$7;->d:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$7;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->f(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;Lcom/alibaba/wukong/im/Conversation;)V

    goto/16 :goto_0

    .line 1803
    :cond_e
    if-ne p2, v4, :cond_11

    .line 1804
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$7;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v0

    if-ne v0, v4, :cond_f

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$7;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v0

    const-wide/16 v2, 0x7

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$7;->a:Lcom/alibaba/wukong/im/Conversation;

    .line 1805
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v0

    const-wide/16 v2, 0xa

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    .line 1806
    :cond_f
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$7;->b:Z

    if-eqz v0, :cond_0

    .line 1807
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$7;->d:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$7;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->e(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;Lcom/alibaba/wukong/im/Conversation;)V

    goto/16 :goto_0

    .line 1810
    :cond_10
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "SessionFragment"

    const-string/jumbo v2, "chatlist_setting_one_session_click"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1812
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$7;->d:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$7;->a:Lcom/alibaba/wukong/im/Conversation;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$7;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->b(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1814
    :cond_11
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 1815
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$7;->b:Z

    if-eqz v0, :cond_0

    .line 1816
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$7;->d:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$7;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->e(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;Lcom/alibaba/wukong/im/Conversation;)V

    goto/16 :goto_0
.end method

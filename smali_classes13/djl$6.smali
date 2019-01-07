.class final Ldjl$6;
.super Ljava/lang/Object;
.source "ConversationUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldjl;->a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Lcma;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcma;


# direct methods
.method constructor <init>(Ljava/util/Map;Lcma;)V
    .locals 0

    .prologue
    .line 1812
    iput-object p1, p0, Ldjl$6;->a:Ljava/util/Map;

    iput-object p2, p0, Ldjl$6;->b:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1815
    iget-object v2, p0, Ldjl$6;->a:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1816
    .local v0, "orgId":J
    iget-object v2, p0, Ldjl$6;->b:Lcma;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 1817
    return-void
.end method

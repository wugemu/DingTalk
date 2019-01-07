.class final Lbbp$110;
.super Ljava/lang/Object;
.source "DingDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbp;->a(JLcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/alibaba/wukong/Callback;

.field final synthetic c:Lbbp;


# direct methods
.method constructor <init>(Lbbp;JLcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 1039
    iput-object p1, p0, Lbbp$110;->c:Lbbp;

    iput-wide p2, p0, Lbbp$110;->a:J

    iput-object p4, p0, Lbbp$110;->b:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 1042
    iget-object v0, p0, Lbbp$110;->c:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v0

    iget-wide v2, p0, Lbbp$110;->a:J

    iget-object v1, p0, Lbbp$110;->b:Lcom/alibaba/wukong/Callback;

    .line 4859
    invoke-static {v2, v3}, Lbkh;->a(J)Z

    move-result v4

    if-nez v4, :cond_0

    .line 4860
    const-string/jumbo v2, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Laxp$i;->unknown_error:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lbbo;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 4861
    :goto_0
    return-void

    .line 4863
    :cond_0
    invoke-virtual {v0, v2, v3}, Lbbo;->a(J)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbbo;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    goto :goto_0
.end method

.class final Lead$2;
.super Ljava/lang/Object;
.source "RecruitmentHrHolder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lead;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lead;


# direct methods
.method constructor <init>(Lead;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lead;

    .prologue
    .line 124
    iput-object p1, p0, Lead$2;->b:Lead;

    iput-object p2, p0, Lead$2;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 127
    if-ltz p2, :cond_0

    iget-object v1, p0, Lead$2;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 128
    iget-object v2, p0, Lead$2;->b:Lead;

    iget-object v1, p0, Lead$2;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    invoke-static {v2, v1}, Lead;->a(Lead;Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "corpId":Ljava/lang/String;
    iget-object v1, p0, Lead$2;->b:Lead;

    invoke-static {v1, v0}, Lead;->a(Lead;Ljava/lang/String;)V

    .line 131
    .end local v0    # "corpId":Ljava/lang/String;
    :cond_0
    return-void
.end method

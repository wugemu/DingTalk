.class abstract Lacv$a;
.super Ljava/lang/Object;
.source "CMailListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation


# instance fields
.field final a:I

.field b:Z

.field c:Lacv;


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 681
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 678
    const/4 v0, 0x0

    iput-boolean v0, p0, Lacv$a;->b:Z

    .line 682
    iput p1, p0, Lacv$a;->a:I

    .line 683
    return-void
.end method

.method public static b(JJ)Ljava/lang/String;
    .locals 2
    .param p0, "mailId"    # J
    .param p2, "timestamp"    # J

    .prologue
    .line 692
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 693
    .local v0, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-virtual {v0, p0, p1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 694
    invoke-virtual {v0, p2, p3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 695
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract a(JJ)V
.end method

.method public abstract a(Landroid/content/Context;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;I)V
.end method

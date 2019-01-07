.class Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer$2;
.super Ljava/lang/Object;
.source "MailTagMailDisplayer.java"

# interfaces
.implements Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderQuery;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;

    .prologue
    .line 662
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer$2;->this$0:Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queryFirstUIModel()Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .locals 1

    .prologue
    .line 665
    const/4 v0, 0x0

    return-object v0
.end method

.method public queryLastUIModel()Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .locals 1

    .prologue
    .line 670
    const/4 v0, 0x0

    return-object v0
.end method

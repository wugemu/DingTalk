.class public final Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter$b;
.super Landroid/widget/Filter;
.source "MailAccountInputAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter;

.field private b:Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter;


# direct methods
.method public constructor <init>(Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter;Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter;
    .param p2, "adapter"    # Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter$b;->a:Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    .line 91
    iput-object p2, p0, Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter$b;->b:Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter;

    .line 92
    return-void
.end method


# virtual methods
.method protected final performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 7
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 103
    new-instance v4, Landroid/widget/Filter$FilterResults;

    invoke-direct {v4}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 105
    .local v4, "results":Landroid/widget/Filter$FilterResults;
    if-nez p1, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-object v4

    .line 109
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "input":Ljava/lang/String;
    const-string/jumbo v5, "@"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 113
    .local v0, "indexOfSplit":I
    const/4 v5, -0x1

    if-ne v0, v5, :cond_2

    .line 114
    iget-object v5, p0, Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter$b;->a:Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter;

    const/4 v6, 0x0

    invoke-static {v5, v1, v6}, Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter;->a(Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :goto_1
    iget-object v5, p0, Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter$b;->b:Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter$b;->b:Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter;

    invoke-static {v5}, Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter;->a(Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 126
    iget-object v5, p0, Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter$b;->b:Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter;

    invoke-static {v5}, Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter;->b(Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter;)Ljava/util/List;

    move-result-object v5

    iput-object v5, v4, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 127
    iget-object v5, p0, Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter$b;->b:Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter;

    invoke-static {v5}, Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter;->c(Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iput v5, v4, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_0

    .line 116
    :cond_2
    const/4 v5, 0x0

    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 117
    .local v3, "prefix":Ljava/lang/String;
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, "postfix":Ljava/lang/String;
    iget-object v5, p0, Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter$b;->a:Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter;

    invoke-static {v5, v3, v2}, Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter;->a(Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected final publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 3
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 135
    iget-object v1, p0, Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter$b;->b:Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter;

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    instance-of v1, v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 136
    iget-object v2, p0, Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter$b;->b:Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter;

    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-static {v2, v1}, Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter;->a(Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter;Ljava/util/List;)Ljava/util/List;

    .line 137
    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    .line 138
    .local v0, "count":I
    if-lez v0, :cond_1

    .line 139
    iget-object v1, p0, Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter$b;->b:Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter;

    invoke-virtual {v1}, Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter;->notifyDataSetChanged()V

    .line 144
    .end local v0    # "count":I
    :cond_0
    :goto_0
    return-void

    .line 141
    .restart local v0    # "count":I
    :cond_1
    iget-object v1, p0, Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter$b;->b:Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter;

    invoke-virtual {v1}, Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method

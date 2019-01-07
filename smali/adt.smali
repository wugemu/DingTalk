.class public abstract Ladt;
.super Ljava/lang/Object;
.source "MessageConvertToMailContentTools.java"


# instance fields
.field protected a:Lcom/alibaba/doraemon/performance/DDStringBuilder;

.field protected b:Lcom/alibaba/doraemon/performance/DDStringBuilder;

.field protected c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field protected e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AttachmentModel;",
            ">;"
        }
    .end annotation
.end field

.field public f:Laeq$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V
    .locals 1
    .param p1, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .prologue
    .line 121
    if-nez p1, :cond_0

    .line 130
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Ladt;->c:Ljava/util/List;

    if-nez v0, :cond_1

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ladt;->c:Ljava/util/List;

    .line 129
    :cond_1
    iget-object v0, p0, Ladt;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .param p1, "hi"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 66
    new-instance v0, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>()V

    iput-object v0, p0, Ladt;->b:Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 67
    iput-object v1, p0, Ladt;->c:Ljava/util/List;

    .line 68
    iput-object v1, p0, Ladt;->d:Ljava/util/List;

    .line 69
    return-void
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public final b()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 151
    iget-object v0, p0, Ladt;->f:Laeq$a;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Ladt;->f:Laeq$a;

    iget-object v1, p0, Ladt;->a:Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ladt;->b:Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-virtual {v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ladt;->d:Ljava/util/List;

    iget-object v4, p0, Ladt;->c:Ljava/util/List;

    iget-object v5, p0, Ladt;->e:Ljava/util/List;

    invoke-interface/range {v0 .. v5}, Laeq$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 155
    :cond_0
    iput-object v6, p0, Ladt;->a:Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 156
    iput-object v6, p0, Ladt;->b:Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 157
    iput-object v6, p0, Ladt;->c:Ljava/util/List;

    .line 158
    iput-object v6, p0, Ladt;->d:Ljava/util/List;

    .line 159
    iput-object v6, p0, Ladt;->e:Ljava/util/List;

    .line 160
    return-void
.end method

.method public abstract b(Ljava/lang/String;)V
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "contentId"    # Ljava/lang/String;
    .param p2, "localUrl"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 136
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    :cond_0
    const-string/jumbo v1, "MsgMailContentTools"

    const-string/jumbo v2, "appendResAttach null"

    invoke-static {v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :goto_0
    return-void

    .line 140
    :cond_1
    iget-object v1, p0, Ladt;->e:Ljava/util/List;

    if-nez v1, :cond_2

    .line 141
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ladt;->e:Ljava/util/List;

    .line 143
    :cond_2
    invoke-static {p2, p1}, Lafh;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    move-result-object v0

    .line 144
    .local v0, "attachmentModel":Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    iget-object v1, p0, Ladt;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public abstract c(Ljava/lang/String;)V
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1
    .param p1, "subject"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    :goto_0
    return-void

    .line 58
    :cond_0
    new-instance v0, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct {v0, p1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ladt;->a:Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 2
    .param p1, "localUrl"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 105
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    const-string/jumbo v0, "MsgMailContentTools"

    const-string/jumbo v1, "appendLocalAttach null"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Ladt;->d:Ljava/util/List;

    if-nez v0, :cond_1

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ladt;->d:Ljava/util/List;

    .line 114
    :cond_1
    iget-object v0, p0, Ladt;->d:Ljava/util/List;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

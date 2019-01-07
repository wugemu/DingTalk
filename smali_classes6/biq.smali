.class public final Lbiq;
.super Ljava/lang/Object;
.source "RecentDingHolder.java"


# instance fields
.field public a:Landroid/app/Activity;

.field public b:Landroid/view/View;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/view/View;

.field public f:Lbfx;

.field public g:Lbhu;

.field h:Layl$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Layl$a;)V
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "onUserSelectedListener"    # Layl$a;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lbiq;->a:Landroid/app/Activity;

    .line 36
    iput-object p2, p0, Lbiq;->b:Landroid/view/View;

    .line 37
    iput-object p3, p0, Lbiq;->h:Layl$a;

    .line 38
    iget-object v0, p0, Lbiq;->b:Landroid/view/View;

    sget v1, Laxp$f;->nicks_tv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbiq;->c:Landroid/widget/TextView;

    .line 39
    iget-object v0, p0, Lbiq;->b:Landroid/view/View;

    sget v1, Laxp$f;->count_tv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbiq;->d:Landroid/widget/TextView;

    .line 40
    iget-object v0, p0, Lbiq;->b:Landroid/view/View;

    sget v1, Laxp$f;->line_bottom:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbiq;->e:Landroid/view/View;

    .line 41
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 126
    .local p1, "userIdentityObjects":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 127
    .local v0, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    if-eqz p1, :cond_1

    .line 128
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    .line 129
    .local v2, "size":I
    const/4 v1, 0x0

    .line 130
    .local v1, "i":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 131
    .local v3, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    add-int/lit8 v5, v2, -0x1

    if-ge v1, v5, :cond_0

    .line 132
    iget-object v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 133
    const-string/jumbo v5, "\u3001"

    invoke-virtual {v0, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 137
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 138
    goto :goto_0

    .line 135
    :cond_0
    iget-object v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_1

    .line 140
    .end local v1    # "i":I
    .end local v2    # "size":I
    .end local v3    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_1
    iget-object v4, p0, Lbiq;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    return-void
.end method

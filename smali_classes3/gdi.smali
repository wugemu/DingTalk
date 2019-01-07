.class public final Lgdi;
.super Ljava/lang/Object;
.source "AclMemberViewHolder.java"


# instance fields
.field public a:Landroid/widget/CheckBox;

.field b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field f:Landroid/widget/TextView;

.field public g:Z

.field h:Lgdk$a;

.field private final i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgdi;->g:Z

    .line 61
    const-string/jumbo v0, "AclMemberViewHolder"

    iput-object v0, p0, Lgdi;->i:Ljava/lang/String;

    return-void
.end method

.method static a(I)Ljava/lang/String;
    .locals 1
    .param p0, "resId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 433
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lgdi;Lgnu;Landroid/content/Context;)V
    .locals 2
    .param p0, "x0"    # Lgdi;
    .param p1, "x1"    # Lgnu;
    .param p2, "x2"    # Landroid/content/Context;

    .prologue
    .line 50
    .line 1158
    invoke-static {}, Lgdm;->c()Lgdm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgdm;->c(Lgnu;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1159
    invoke-static {}, Lgdm;->c()Lgdm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgdm;->b(Lgnu;)V

    .line 1161
    iget-object v0, p0, Lgdi;->a:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1172
    :goto_0
    iget-object v0, p0, Lgdi;->h:Lgdk$a;

    if-eqz v0, :cond_0

    .line 1173
    iget-object v0, p0, Lgdi;->h:Lgdk$a;

    invoke-interface {v0}, Lgdk$a;->a()V

    .line 1164
    :cond_0
    return-void

    .line 1235
    :cond_1
    iget-boolean v0, p1, Lgnu;->f:Z

    .line 1163
    if-nez v0, :cond_0

    .line 1243
    iget-boolean v0, p1, Lgnu;->g:Z

    .line 1163
    if-nez v0, :cond_0

    .line 1167
    invoke-static {}, Lgdm;->c()Lgdm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgdm;->a(Lgnu;)V

    .line 1169
    iget-object v0, p0, Lgdi;->a:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

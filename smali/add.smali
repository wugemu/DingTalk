.class public final Ladd;
.super Landroid/widget/BaseAdapter;
.source "MailSignTemplateAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ladd$a;,
        Ladd$b;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ladd$a;

.field public final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/app/Activity;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Laca;",
            ">;"
        }
    .end annotation
.end field

.field private f:J

.field private volatile g:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Laca;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p2, "datas":Ljava/util/List;, "Ljava/util/List<Laca;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 33
    const-string/jumbo v0, "MailSignTemplateAdapter"

    iput-object v0, p0, Ladd;->a:Ljava/lang/String;

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Ladd;->g:Z

    .line 176
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ladd;->c:Ljava/util/Set;

    .line 40
    iput-object p1, p0, Ladd;->d:Landroid/app/Activity;

    .line 41
    iput-object p2, p0, Ladd;->e:Ljava/util/List;

    .line 42
    return-void
.end method

.method public static synthetic a(Ladd;)J
    .locals 2
    .param p0, "x0"    # Ladd;

    .prologue
    .line 31
    iget-wide v0, p0, Ladd;->f:J

    return-wide v0
.end method

.method public static synthetic a(Ladd;Landroid/webkit/WebView;Z)V
    .locals 0
    .param p0, "x0"    # Ladd;
    .param p1, "x1"    # Landroid/webkit/WebView;
    .param p2, "x2"    # Z

    .prologue
    .line 31
    invoke-static {p1, p2}, Ladd;->a(Landroid/webkit/WebView;Z)V

    return-void
.end method

.method private static a(Landroid/webkit/WebView;Z)V
    .locals 1
    .param p0, "view"    # Landroid/webkit/WebView;
    .param p1, "isSelected"    # Z

    .prologue
    .line 134
    if-nez p0, :cond_0

    .line 142
    :goto_0
    return-void

    .line 137
    :cond_0
    if-eqz p1, :cond_1

    .line 138
    const-string/jumbo v0, "javascript:function setBgColorFunction(){document.getElementById(\"wrap\").style.borderColor = \"#3296FA\";document.getElementById(\"wrap\").style.boxShadow = \"0 0 8px rgba(0,0,0,0.15)\"; }  setBgColorFunction()"

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 140
    :cond_1
    const-string/jumbo v0, "javascript:function setBgColorFunction(){document.getElementById(\"wrap\").style.borderColor = document.getElementById(\"wrap\").getAttribute(\"_bc\"); document.getElementById(\"wrap\").style.boxShadow = \"\"; }  setBgColorFunction()"

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Ladd;)Ladd$a;
    .locals 1
    .param p0, "x0"    # Ladd;

    .prologue
    .line 31
    iget-object v0, p0, Ladd;->b:Ladd$a;

    return-object v0
.end method


# virtual methods
.method public final a(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 164
    iput-wide p1, p0, Ladd;->f:J

    .line 165
    invoke-virtual {p0}, Ladd;->notifyDataSetChanged()V

    .line 166
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Ladd;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Ladd;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 49
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 54
    iget-object v0, p0, Ladd;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 55
    if-ltz p1, :cond_0

    iget-object v0, p0, Ladd;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 56
    iget-object v0, p0, Ladd;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 59
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 64
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 70
    if-nez p2, :cond_0

    .line 71
    new-instance v4, Ladd$b;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Ladd$b;-><init>(Ladd;B)V

    .line 72
    .local v4, "viewHolder":Ladd$b;
    iget-object v5, p0, Ladd;->d:Landroid/app/Activity;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Laxo$g;->mail_sign_template_item:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 73
    sget v5, Laxo$f;->mail_sign_template_selector:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v4, Ladd$b;->a:Landroid/view/View;

    .line 74
    sget v5, Laxo$f;->mail_sign_template:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    iput-object v5, v4, Ladd$b;->b:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    .line 75
    sget v5, Laxo$f;->tv_mail_sign_template_overlay:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Ladd$b;->c:Landroid/widget/TextView;

    .line 76
    iget-object v5, v4, Ladd$b;->b:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    invoke-virtual {v5}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 77
    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 78
    iget-object v5, p0, Ladd;->c:Ljava/util/Set;

    iget-object v6, v4, Ladd$b;->b:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    :goto_0
    invoke-virtual {p0, p1}, Ladd;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laca;

    .line 84
    .local v2, "item":Laca;
    if-nez v2, :cond_1

    .line 130
    :goto_1
    return-object p2

    .line 80
    .end local v2    # "item":Laca;
    .end local v4    # "viewHolder":Ladd$b;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ladd$b;

    .restart local v4    # "viewHolder":Ladd$b;
    goto :goto_0

    .line 88
    .restart local v2    # "item":Laca;
    :cond_1
    iget-wide v6, v2, Laca;->b:J

    iget-wide v8, p0, Ladd;->f:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_4

    .line 89
    iget-object v5, v4, Ladd$b;->a:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 93
    :goto_2
    iget-object v5, v4, Ladd$b;->b:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    .line 1146
    if-eqz v5, :cond_2

    .line 1149
    iget-boolean v6, p0, Ladd;->g:Z

    if-nez v6, :cond_5

    .line 1150
    invoke-virtual {v5}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->resumeTimers()V

    .line 94
    :cond_2
    :goto_3
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 95
    .local v3, "localDisplayMetrics":Landroid/util/DisplayMetrics;
    new-instance v0, Lsh;

    invoke-direct {v0}, Lsh;-><init>()V

    .line 96
    .local v0, "config":Lsh;
    iget-object v5, p0, Ladd;->d:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 97
    iget v5, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    iget v6, v3, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr v5, v6

    iput v5, v0, Lsh;->b:F

    .line 98
    const/high16 v5, 0x41900000    # 18.0f

    iget v6, v3, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v5, v6

    iget v6, v3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v5, v6

    iput v5, v0, Lsh;->c:F

    .line 99
    const-string/jumbo v5, "<!DOCTYPE html><html lang=\"en\"><head><meta charset=\"UTF-8\"><meta name=\"viewport\" content=\"width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no\" ></head><body>%s</body></html>"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, v2, Laca;->t:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "html":Ljava/lang/String;
    iget-object v5, v4, Ladd$b;->b:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    invoke-virtual {v5, v1, v1, v0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->a(Ljava/lang/String;Ljava/lang/String;Lsh;)Z

    .line 101
    iget-object v5, v4, Ladd$b;->b:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->setEnabled(Z)V

    .line 102
    iget-object v5, v4, Ladd$b;->b:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    invoke-static {v5}, Lafh;->a(Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;)V

    .line 104
    iget-boolean v5, v4, Ladd$b;->d:Z

    if-eqz v5, :cond_7

    .line 105
    iget-object v5, v4, Ladd$b;->b:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    if-eqz v5, :cond_3

    if-eqz v2, :cond_3

    .line 106
    iget-object v6, v4, Ladd$b;->b:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    iget-wide v8, v2, Laca;->b:J

    iget-wide v10, p0, Ladd;->f:J

    cmp-long v5, v8, v10

    if-nez v5, :cond_6

    const/4 v5, 0x1

    :goto_4
    invoke-static {v6, v5}, Ladd;->a(Landroid/webkit/WebView;Z)V

    .line 122
    :cond_3
    :goto_5
    iget-object v5, v4, Ladd$b;->c:Landroid/widget/TextView;

    new-instance v6, Ladd$1;

    invoke-direct {v6, p0, v2}, Ladd$1;-><init>(Ladd;Laca;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 91
    .end local v0    # "config":Lsh;
    .end local v1    # "html":Ljava/lang/String;
    .end local v3    # "localDisplayMetrics":Landroid/util/DisplayMetrics;
    :cond_4
    iget-object v5, v4, Ladd$b;->a:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 1152
    :cond_5
    const/4 v5, 0x1

    iput-boolean v5, p0, Ladd;->g:Z

    goto :goto_3

    .line 106
    .restart local v0    # "config":Lsh;
    .restart local v1    # "html":Ljava/lang/String;
    .restart local v3    # "localDisplayMetrics":Landroid/util/DisplayMetrics;
    :cond_6
    const/4 v5, 0x0

    goto :goto_4

    .line 109
    :cond_7
    iget-object v5, v4, Ladd$b;->b:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    new-instance v6, Lcom/alibaba/alimei/mail/adapter/MailSignTemplateAdapter$1;

    invoke-direct {v6, p0, v4, v2}, Lcom/alibaba/alimei/mail/adapter/MailSignTemplateAdapter$1;-><init>(Ladd;Ladd$b;Laca;)V

    invoke-virtual {v5, v6}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    goto :goto_5
.end method

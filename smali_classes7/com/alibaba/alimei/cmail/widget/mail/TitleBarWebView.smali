.class public Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;
.super Landroid/webkit/WebView;
.source "TitleBarWebView.java"

# interfaces
.implements Landroid/webkit/WebViewClassic$TitleBarDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$a;,
        Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$b;
    }
.end annotation


# static fields
.field private static final i:Ljava/util/regex/Pattern;


# instance fields
.field private A:Ljava/lang/reflect/Method;

.field private B:Z

.field private C:Ljava/lang/Runnable;

.field private D:Z

.field private E:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field private F:I

.field private G:Landroid/view/View;

.field private H:Ljava/lang/String;

.field private I:F

.field public a:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$b;

.field b:Landroid/view/View;

.field public c:Landroid/view/View;

.field d:Z

.field e:Z

.field f:Z

.field g:Z

.field protected h:Z

.field private j:Z

.field private k:Z

.field private l:I

.field private m:Z

.field private n:Z

.field private o:Landroid/widget/Scroller;

.field private p:I

.field private q:I

.field private r:F

.field private s:F

.field private t:Z

.field private u:Landroid/graphics/Rect;

.field private v:Landroid/graphics/Matrix;

.field private w:Z

.field private x:Z

.field private y:Ljava/lang/reflect/Method;

.field private z:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const-string/jumbo v0, "<(?i)img\\s+"

    .line 80
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->i:Ljava/util/regex/Pattern;

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 151
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 81
    iput-boolean v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->j:Z

    .line 101
    iput-boolean v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->k:Z

    .line 110
    iput v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->p:I

    .line 111
    iput v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->q:I

    .line 127
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->u:Landroid/graphics/Rect;

    .line 128
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->v:Landroid/graphics/Matrix;

    .line 129
    iput-boolean v1, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->w:Z

    .line 130
    iput-boolean v1, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->x:Z

    .line 135
    iput-boolean v1, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->B:Z

    .line 137
    iput-boolean v1, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->D:Z

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->E:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 139
    iput-boolean v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->h:Z

    .line 618
    const-string/jumbo v0, "other/template/content.html"

    iput-object v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->H:Ljava/lang/String;

    .line 766
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->I:F

    .line 152
    invoke-direct {p0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->b()V

    .line 153
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 156
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    iput-boolean v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->j:Z

    .line 101
    iput-boolean v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->k:Z

    .line 110
    iput v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->p:I

    .line 111
    iput v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->q:I

    .line 127
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->u:Landroid/graphics/Rect;

    .line 128
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->v:Landroid/graphics/Matrix;

    .line 129
    iput-boolean v1, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->w:Z

    .line 130
    iput-boolean v1, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->x:Z

    .line 135
    iput-boolean v1, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->B:Z

    .line 137
    iput-boolean v1, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->D:Z

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->E:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 139
    iput-boolean v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->h:Z

    .line 618
    const-string/jumbo v0, "other/template/content.html"

    iput-object v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->H:Ljava/lang/String;

    .line 766
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->I:F

    .line 157
    invoke-direct {p0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->b()V

    .line 158
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 161
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    iput-boolean v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->j:Z

    .line 101
    iput-boolean v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->k:Z

    .line 110
    iput v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->p:I

    .line 111
    iput v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->q:I

    .line 127
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->u:Landroid/graphics/Rect;

    .line 128
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->v:Landroid/graphics/Matrix;

    .line 129
    iput-boolean v1, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->w:Z

    .line 130
    iput-boolean v1, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->x:Z

    .line 135
    iput-boolean v1, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->B:Z

    .line 137
    iput-boolean v1, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->D:Z

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->E:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 139
    iput-boolean v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->h:Z

    .line 618
    const-string/jumbo v0, "other/template/content.html"

    iput-object v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->H:Ljava/lang/String;

    .line 766
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->I:F

    .line 162
    invoke-direct {p0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->b()V

    .line 163
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;
    .param p1, "x1"    # F

    .prologue
    .line 76
    iput p1, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->I:F

    return p1
.end method

.method static synthetic a(Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->C:Ljava/lang/Runnable;

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "strFilePath"    # Ljava/lang/String;

    .prologue
    .line 640
    const-string/jumbo v0, ""

    .line 642
    .local v0, "content":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    .line 643
    invoke-virtual {v3, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 644
    .local v2, "in":Ljava/io/InputStream;
    const-string/jumbo v3, "utf-8"

    .line 2058
    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    .line 2161
    if-nez v3, :cond_0

    .line 3136
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 3137
    invoke-static {v3, v4}, Lsb;->a(Ljava/io/Reader;Ljava/io/Writer;)I

    .line 2060
    :goto_0
    invoke-virtual {v4}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 645
    invoke-static {v2}, Lcom/alibaba/alimei/restfulapi/support/IOUtils;->close(Ljava/io/Closeable;)V

    .line 649
    .end local v2    # "in":Ljava/io/InputStream;
    :goto_1
    return-object v0

    .line 2164
    .restart local v2    # "in":Ljava/io/InputStream;
    :cond_0
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2165
    invoke-static {v5, v4}, Lsb;->a(Ljava/io/Reader;Ljava/io/Writer;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 646
    .end local v2    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 647
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic a(Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;Ljava/lang/String;Lsh;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lsh;

    .prologue
    .line 76
    .line 4587
    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v1, "file:///android_asset/other/template?contentWidth=0.0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 4589
    const-string/jumbo v1, "&scale="

    .line 4590
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p2, Lsh;->d:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "&tableFix=false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "&contentNull=false"

    .line 4591
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "&pageWidth="

    .line 4592
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p2, Lsh;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "&showimage=true&admail=false&showdownloadalldiv=false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 4593
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "text/html"

    const-string/jumbo v4, "utf-8"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    .line 4587
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->j:Z

    return v0
.end method

.method private b()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 958
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 959
    .local v0, "context":Landroid/content/Context;
    instance-of v1, v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 960
    check-cast v1, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iput-object v1, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->E:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 962
    :cond_0
    iget-boolean v1, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->w:Z

    if-nez v1, :cond_1

    .line 964
    :try_start_0
    const-class v1, Landroid/webkit/WebView;

    const-string/jumbo v2, "getVisibleTitleHeight"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    .line 965
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->y:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 970
    :goto_0
    iput-boolean v5, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->w:Z

    .line 972
    :cond_1
    iget-boolean v1, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->x:Z

    if-eqz v1, :cond_2

    .line 974
    :try_start_1
    const-class v1, Landroid/webkit/WebView;

    const-string/jumbo v2, "getTitleHeight"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    .line 975
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->z:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 980
    :goto_1
    iput-boolean v5, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->x:Z

    .line 982
    :cond_2
    invoke-static {v0}, Lafh;->a(Landroid/content/Context;)V

    .line 983
    invoke-virtual {p0, v4}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 986
    new-instance v1, Lrn;

    invoke-direct {v1}, Lrn;-><init>()V

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 987
    return-void

    .line 967
    :catch_0
    move-exception v1

    const-string/jumbo v1, "TitleBarWebView"

    const-string/jumbo v2, "Could not retrieve native hidden getVisibleTitleHeight method"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 977
    :catch_1
    move-exception v1

    const-string/jumbo v1, "TitleBarWebView"

    const-string/jumbo v2, "Could not retrieve native hidden getTitleHeight method"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic b(Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->D:Z

    return v0
.end method

.method static synthetic c(Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;)F
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getSuperScale()F

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;)F
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    .prologue
    .line 76
    iget v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->I:F

    return v0
.end method

.method static synthetic e(Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->t:Z

    return v0
.end method

.method private getFooterBarHeight()F
    .locals 1

    .prologue
    .line 873
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->c:Landroid/view/View;

    if-nez v0, :cond_0

    .line 874
    const/4 v0, 0x0

    .line 876
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0
.end method

.method private getSuperScale()F
    .locals 1

    .prologue
    .line 869
    invoke-super {p0}, Landroid/webkit/WebView;->getScale()F

    move-result v0

    return v0
.end method

.method private getTitleHeightCompact()I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 494
    const/4 v1, 0x0

    .line 495
    .local v1, "titleHeight":I
    iget-object v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->b:Landroid/view/View;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->z:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1

    .line 498
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->z:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 499
    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v1

    .line 513
    :cond_0
    :goto_0
    return v1

    .line 500
    :catch_0
    move-exception v0

    .line 501
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 502
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 503
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 504
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 505
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 507
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_1
    iget-object v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->b:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 508
    iget-object v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_0

    .line 509
    :cond_2
    iget-object v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->G:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 510
    iget-object v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->G:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_0
.end method

.method private getViewHeightWithTitle()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 950
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getHeight()I

    move-result v0

    .line 951
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->isHorizontalScrollBarEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->overlayHorizontalScrollbar()Z

    move-result v1

    if-nez v1, :cond_0

    .line 952
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getHorizontalScrollbarHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 954
    :cond_0
    return v0
.end method

.method private setEmbeddedTitleBarJellyBean(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, -0x2

    .line 997
    iget-object v3, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->b:Landroid/view/View;

    if-ne v3, p1, :cond_0

    .line 1018
    :goto_0
    return-void

    .line 1000
    :cond_0
    iget-object v3, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->b:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 1001
    iget-object v3, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->b:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->removeView(Landroid/view/View;)V

    .line 1004
    :cond_1
    if-eqz p1, :cond_2

    .line 1005
    new-instance v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v2, v5, v4, v6, v6}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 1009
    .local v2, "vParams":Landroid/widget/AbsoluteLayout$LayoutParams;
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1010
    .local v0, "tbv":Landroid/widget/FrameLayout;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1012
    .local v1, "tbvParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1013
    invoke-virtual {p0, v0, v2}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1014
    move-object p1, v0

    .line 1017
    .end local v0    # "tbv":Landroid/widget/FrameLayout;
    .end local v1    # "tbvParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v2    # "vParams":Landroid/widget/AbsoluteLayout$LayoutParams;
    :cond_2
    iput-object p1, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->b:Landroid/view/View;

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 772
    invoke-direct {p0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getFooterBarHeight()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->a(F)V

    .line 773
    return-void
.end method

.method public final a(F)V
    .locals 3
    .param p1, "privateDefinedHeight"    # F

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 775
    iget-object v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->c:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 776
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 777
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_1

    .line 819
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_0
    :goto_0
    return-void

    .line 780
    .restart local v0    # "handler":Landroid/os/Handler;
    :cond_1
    new-instance v1, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$1;-><init>(Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;F)V

    .line 813
    .local v1, "runnable":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->C:Ljava/lang/Runnable;

    if-eqz v2, :cond_2

    .line 814
    iget-object v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 816
    :cond_2
    iput-object v1, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->C:Ljava/lang/Runnable;

    .line 817
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public a(II)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 675
    iget-object v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->o:Landroid/widget/Scroller;

    if-eqz v2, :cond_0

    .line 676
    iget-object v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->o:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 678
    :cond_0
    iget-object v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->o:Landroid/widget/Scroller;

    if-nez v2, :cond_1

    .line 679
    new-instance v2, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->o:Landroid/widget/Scroller;

    .line 681
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getScrollX()I

    move-result v2

    sub-int v0, p1, v2

    .line 682
    .local v0, "dx":I
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getScrollY()I

    move-result v2

    sub-int v1, p2, v2

    .line 683
    .local v1, "dy":I
    iget-object v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->o:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getScrollY()I

    move-result v4

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 684
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->invalidate()V

    .line 685
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "sId"    # Ljava/lang/String;
    .param p2, "sPath"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 844
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 846
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 847
    new-instance v1, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$2;-><init>(Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 866
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Lsh;)V
    .locals 3
    .param p1, "html"    # Ljava/lang/String;
    .param p2, "config"    # Lsh;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 542
    iput-boolean v2, p2, Lsh;->e:Z

    .line 543
    iput-boolean v2, p2, Lsh;->f:Z

    .line 1582
    sget-object v0, Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;->HIGH:Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;

    invoke-static {v0}, Laif;->a(Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;)Laie;

    move-result-object v0

    .line 1583
    new-instance v1, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$a;

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$a;-><init>(Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;Ljava/lang/String;Lsh;B)V

    invoke-interface {v0, v1}, Laie;->a(Ljava/lang/Runnable;)V

    .line 546
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lsh;)Z
    .locals 3
    .param p1, "bodyText"    # Ljava/lang/String;
    .param p2, "bodyHtml"    # Ljava/lang/String;
    .param p3, "config"    # Lsh;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 659
    const/4 v0, 0x0

    .line 660
    .local v0, "hasImages":Z
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_2

    .line 661
    :cond_0
    invoke-static {p1}, Lafh;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 667
    .local v1, "text":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_1

    .line 668
    invoke-virtual {p0, v1, p3}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->a(Ljava/lang/String;Lsh;)V

    .line 671
    :cond_1
    return v0

    .line 663
    .end local v1    # "text":Ljava/lang/String;
    :cond_2
    move-object v1, p2

    .line 664
    .restart local v1    # "text":Ljava/lang/String;
    sget-object v2, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->i:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    goto :goto_0
.end method

.method public canFoldQuote()Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1128
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->a:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$b;

    if-eqz v0, :cond_0

    .line 1129
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->a:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$b;

    invoke-interface {v0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$b;->a()Z

    move-result v0

    .line 1132
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 689
    iget-object v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->o:Landroid/widget/Scroller;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->o:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 690
    iget-object v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->o:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    .line 691
    .local v0, "currX":I
    iget-object v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->o:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .line 694
    .local v1, "currY":I
    iget v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->p:I

    if-ne v2, v0, :cond_0

    iget v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->q:I

    if-eq v2, v1, :cond_1

    .line 695
    :cond_0
    iput v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->p:I

    .line 696
    iput v1, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->q:I

    .line 697
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->scrollTo(II)V

    .line 698
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->postInvalidate()V

    .line 699
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->requestLayout()V

    .line 704
    .end local v0    # "currX":I
    .end local v1    # "currY":I
    :cond_1
    :goto_0
    return-void

    .line 702
    :cond_2
    invoke-super {p0}, Landroid/webkit/WebView;->computeScroll()V

    goto :goto_0
.end method

.method protected computeVerticalScrollExtent()I
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->b:Landroid/view/View;

    if-nez v0, :cond_0

    .line 415
    invoke-super {p0}, Landroid/webkit/WebView;->computeVerticalScrollExtent()I

    move-result v0

    .line 416
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getViewHeightWithTitle()I

    move-result v0

    goto :goto_0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 421
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->b:Landroid/view/View;

    if-nez v0, :cond_0

    .line 422
    invoke-super {p0}, Landroid/webkit/WebView;->computeVerticalScrollOffset()I

    move-result v0

    .line 423
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getScrollY()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method public destroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 824
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->D:Z

    .line 825
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    .line 826
    iget-object v1, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->C:Ljava/lang/Runnable;

    .line 827
    .local v1, "runnable":Ljava/lang/Runnable;
    if-eqz v1, :cond_0

    .line 828
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 829
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 830
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 833
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->E:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 834
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 172
    iput-boolean v5, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->f:Z

    .line 173
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->c:Landroid/view/View;

    if-nez v2, :cond_0

    .line 174
    invoke-super {p0, p1}, Landroid/webkit/WebView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 286
    :goto_0
    return v2

    .line 177
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 223
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 224
    iput-boolean v6, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->n:Z

    .line 230
    :cond_1
    :goto_1
    iget-boolean v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->e:Z

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->c:Landroid/view/View;

    if-eqz v2, :cond_a

    .line 231
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-eq v2, v5, :cond_2

    .line 232
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-ne v2, v7, :cond_3

    .line 233
    :cond_2
    iput-boolean v6, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->m:Z

    .line 234
    iput-boolean v6, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->e:Z

    .line 237
    :cond_3
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 238
    .local v0, "event":Landroid/view/MotionEvent;
    iget-object v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->c:Landroid/view/View;

    .line 239
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 240
    .local v1, "lp":Landroid/widget/AbsoluteLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, v1, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 241
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-static {v4, v5}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    .line 240
    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 242
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 243
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, v1, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getScrollY()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 242
    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 244
    iget-object v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->c:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 245
    invoke-super {p0, p1}, Landroid/webkit/WebView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 179
    .end local v0    # "event":Landroid/view/MotionEvent;
    .end local v1    # "lp":Landroid/widget/AbsoluteLayout$LayoutParams;
    :pswitch_0
    iput-boolean v5, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->g:Z

    .line 180
    iget-object v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->b:Landroid/view/View;

    if-eqz v2, :cond_5

    .line 181
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->b:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getScrollY()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    .line 182
    iput-boolean v5, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->d:Z

    .line 189
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getScrollY()I

    move-result v2

    iput v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->l:I

    goto :goto_1

    .line 183
    :cond_5
    iget-object v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->c:Landroid/view/View;

    if-eqz v2, :cond_4

    .line 184
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getFooterBarParddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getScrollY()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    .line 185
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getFooterBarParddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getScrollY()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->c:Landroid/view/View;

    .line 186
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_4

    .line 187
    iput-boolean v5, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->e:Z

    goto :goto_2

    .line 193
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-le v2, v5, :cond_7

    .line 194
    iput-boolean v5, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->n:Z

    .line 199
    :cond_6
    :goto_3
    iget v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->l:I

    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getScrollY()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x5

    if-le v2, v3, :cond_1

    .line 200
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getScrollY()I

    move-result v2

    iput v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->l:I

    .line 201
    iput-boolean v5, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->m:Z

    goto/16 :goto_1

    .line 195
    :cond_7
    iget-boolean v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->n:Z

    if-eqz v2, :cond_6

    .line 196
    iput-boolean v6, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->n:Z

    goto :goto_3

    .line 207
    :pswitch_2
    iput-boolean v6, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->g:Z

    .line 208
    iget-object v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->b:Landroid/view/View;

    if-eqz v2, :cond_8

    .line 209
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->b:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getScrollY()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_8

    .line 210
    iput-boolean v5, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->d:Z

    .line 215
    :goto_4
    iget-object v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->c:Landroid/view/View;

    if-eqz v2, :cond_9

    .line 216
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getFooterBarParddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getScrollY()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_9

    .line 217
    iput-boolean v5, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->e:Z

    goto/16 :goto_1

    .line 212
    :cond_8
    iput-boolean v6, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->d:Z

    goto :goto_4

    .line 219
    :cond_9
    iput-boolean v6, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->e:Z

    goto/16 :goto_1

    .line 248
    :cond_a
    iget-boolean v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->d:Z

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->b:Landroid/view/View;

    if-eqz v2, :cond_e

    .line 249
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-eq v2, v5, :cond_b

    .line 250
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-ne v2, v7, :cond_c

    .line 251
    :cond_b
    iput-boolean v6, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->m:Z

    .line 252
    iput-boolean v6, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->d:Z

    .line 254
    :cond_c
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 255
    .restart local v0    # "event":Landroid/view/MotionEvent;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getScrollY()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 256
    iget-object v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->b:Landroid/view/View;

    if-eqz v2, :cond_d

    .line 257
    iget-object v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->b:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 259
    :cond_d
    invoke-super {p0, p1}, Landroid/webkit/WebView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 262
    .end local v0    # "event":Landroid/view/MotionEvent;
    :cond_e
    iget-boolean v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->m:Z

    if-eqz v2, :cond_12

    iget-boolean v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->d:Z

    if-nez v2, :cond_12

    iget-object v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->b:Landroid/view/View;

    if-eqz v2, :cond_12

    .line 263
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-eq v2, v5, :cond_f

    .line 264
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-ne v2, v7, :cond_10

    .line 265
    :cond_f
    iput-boolean v6, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->m:Z

    .line 267
    :cond_10
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 268
    .restart local v0    # "event":Landroid/view/MotionEvent;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getScrollY()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 269
    iget-object v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->b:Landroid/view/View;

    if-eqz v2, :cond_11

    .line 270
    iget-object v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->b:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 272
    :cond_11
    invoke-super {p0, p1}, Landroid/webkit/WebView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 274
    .end local v0    # "event":Landroid/view/MotionEvent;
    :cond_12
    iget-boolean v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->m:Z

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->b:Landroid/view/View;

    if-eqz v2, :cond_16

    .line 275
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-eq v2, v5, :cond_13

    .line 276
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-ne v2, v7, :cond_14

    .line 277
    :cond_13
    iput-boolean v6, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->m:Z

    .line 279
    :cond_14
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 280
    .restart local v0    # "event":Landroid/view/MotionEvent;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getScrollY()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 281
    iget-object v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->b:Landroid/view/View;

    if-eqz v2, :cond_15

    .line 282
    iget-object v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->b:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 284
    :cond_15
    invoke-super {p0, p1}, Landroid/webkit/WebView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 286
    .end local v0    # "event":Landroid/view/MotionEvent;
    :cond_16
    invoke-super {p0, p1}, Landroid/webkit/WebView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 177
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 429
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 432
    iget-object v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->b:Landroid/view/View;

    if-ne p2, v2, :cond_0

    .line 433
    iget-object v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->b:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getScrollX()I

    move-result v3

    iget-object v4, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->b:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 435
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    .line 436
    iget-object v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->v:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 437
    iget-object v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->v:Landroid/graphics/Matrix;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getScrollY()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 438
    iget-object v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->v:Landroid/graphics/Matrix;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 443
    :cond_0
    iget-object v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->c:Landroid/view/View;

    if-ne p2, v2, :cond_2

    .line 444
    iget-object v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->c:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getScrollX()I

    move-result v3

    iget-object v4, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->c:Landroid/view/View;

    .line 445
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    .line 444
    invoke-virtual {v2, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 446
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getContentHeight()I

    move-result v2

    if-gtz v2, :cond_1

    .line 447
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 448
    const/4 v1, 0x0

    .line 463
    :goto_0
    return v1

    .line 451
    :cond_1
    iget-object v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->c:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 453
    .local v0, "lp":Landroid/widget/AbsoluteLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getFooterBarParddingTop()I

    move-result v2

    iput v2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 454
    iget-object v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->c:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 460
    .end local v0    # "lp":Landroid/widget/AbsoluteLayout$LayoutParams;
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    .line 461
    .local v1, "result":Z
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public finish(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1060
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$3;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$3;-><init>(Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1076
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->a:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$b;

    if-eqz v0, :cond_1

    .line 1077
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->a:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$b;->a(Z)V

    .line 1080
    :cond_1
    return-void
.end method

.method public finishAll()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1084
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1085
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 1086
    new-instance v1, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$4;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$4;-><init>(Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1095
    :cond_0
    return-void
.end method

.method public getContentHeight()I
    .locals 1

    .prologue
    .line 881
    iget v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->r:F

    float-to-int v0, v0

    return v0
.end method

.method public getFooterBar()Landroid/view/View;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->c:Landroid/view/View;

    return-object v0
.end method

.method public getFooterBarParddingTop()I
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 472
    invoke-direct {p0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getTitleHeightCompact()I

    move-result v2

    .line 475
    .local v2, "titleHeight":I
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getContentHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-super {p0}, Landroid/webkit/WebView;->getScale()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v0, v3

    .line 477
    .local v0, "allHeight":I
    const/4 v1, 0x0

    .line 478
    .local v1, "parddingTop":I
    iget-object v3, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->c:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 479
    iget-object v3, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->c:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 480
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-ge v3, v4, :cond_1

    .line 481
    add-int v1, v0, v2

    .line 490
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {p0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getFooterBarHeight()F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    return v3

    .line 485
    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method public getHideQuoteText()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->a:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$b;

    if-eqz v0, :cond_0

    .line 1147
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->a:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$b;

    invoke-interface {v0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$b;->b()Ljava/lang/String;

    move-result-object v0

    .line 1150
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImageCachePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1054
    return-object p1
.end method

.method public getScale()F
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1023
    iget-boolean v1, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->t:Z

    if-eqz v1, :cond_1

    .line 1024
    iget v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->s:F

    .line 1029
    .local v0, "scale":F
    :goto_0
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 1030
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1031
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->s:F

    .line 1033
    :cond_0
    return v0

    .line 1026
    .end local v0    # "scale":F
    :cond_1
    invoke-super {p0}, Landroid/webkit/WebView;->getScale()F

    move-result v0

    .restart local v0    # "scale":F
    goto :goto_0
.end method

.method public getShowQuoteText()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1137
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->a:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$b;

    if-eqz v0, :cond_0

    .line 1138
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->a:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$b;

    invoke-interface {v0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$b;->c()Ljava/lang/String;

    move-result-object v0

    .line 1141
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTitleBarHeight()F
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1221
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 1223
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getTitleHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcms;->d(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    .line 1225
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTitleBarView()Landroid/view/View;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->G:Landroid/view/View;

    return-object v0
.end method

.method public getTitleHeight()I
    .locals 1

    .prologue
    .line 943
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->G:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 944
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->G:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 946
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getVisibleTitleHeightCompat()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 522
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->b:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->y:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 524
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->y:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 530
    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getTitleHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getScrollY()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method public hideLoadingTip()V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1235
    return-void
.end method

.method public isInitQuoteShow()Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1159
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->a:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$b;

    if-eqz v0, :cond_0

    .line 1160
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->a:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$b;

    invoke-interface {v0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$b;->d()Z

    move-result v0

    .line 1163
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "encoding"    # Ljava/lang/String;
    .param p5, "historyUrl"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 611
    :try_start_0
    iget-boolean v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->h:Z

    if-eqz v0, :cond_0

    .line 1630
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->H:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1631
    const-string/jumbo v1, "</head>"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "<style type=\"text/css\">body{padding-left: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->F:I

    .line 1632
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "px;}</style></head>"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1631
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1633
    const-string/jumbo v1, "%@"

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1634
    const-string/jumbo v1, "@headerPardingTop@"

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 611
    invoke-super/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 616
    :goto_1
    return-void

    :cond_0
    move-object v2, p2

    .line 611
    goto :goto_0

    .line 613
    :catch_0
    move-exception v6

    .line 614
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "TitleBarWebView"

    const-string/jumbo v1, " loadDataWithBaseURL "

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1176
    const-string/jumbo v0, "TitleBarWebView"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    return-void
.end method

.method public logFile(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1183
    const-string/jumbo v0, "logFile: "

    invoke-static {v0, p1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    return-void
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "parentHeightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/high16 v2, -0x80000000

    .line 398
    iget-object v1, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->b:Landroid/view/View;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->c:Landroid/view/View;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->G:Landroid/view/View;

    if-ne p1, v1, :cond_2

    .line 400
    :cond_0
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 401
    .local v0, "hmode":I
    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_2

    .line 403
    :cond_1
    const v1, 0x7fffffff

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 408
    .end local v0    # "hmode":I
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebView;->measureChild(Landroid/view/View;II)V

    .line 410
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 922
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    .line 923
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->j:Z

    .line 924
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 888
    iget-boolean v3, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->D:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->E:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v3}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 918
    :cond_0
    :goto_0
    return-void

    .line 892
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_2

    .line 893
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 897
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 900
    iget-object v3, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->b:Landroid/view/View;

    if-eqz v3, :cond_4

    .line 901
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getScrollY()I

    move-result v1

    .line 902
    .local v1, "sy":I
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getScrollX()I

    move-result v0

    .line 903
    .local v0, "sx":I
    iget-object v3, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->u:Landroid/graphics/Rect;

    iput v1, v3, Landroid/graphics/Rect;->top:I

    .line 904
    iget-object v3, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->u:Landroid/graphics/Rect;

    iput v0, v3, Landroid/graphics/Rect;->left:I

    .line 905
    iget-object v3, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->u:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->u:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 906
    iget-object v3, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->u:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->u:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 907
    iget-object v3, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->u:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 908
    iget-object v3, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->v:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 909
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getVisibleTitleHeightCompat()I

    move-result v2

    .line 910
    .local v2, "titleBarOffs":I
    if-gez v2, :cond_3

    .line 911
    const/4 v2, 0x0

    .line 912
    :cond_3
    iget-object v3, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->v:Landroid/graphics/Matrix;

    const/4 v4, 0x0

    int-to-float v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 913
    iget-object v3, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->v:Landroid/graphics/Matrix;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 916
    .end local v0    # "sx":I
    .end local v1    # "sy":I
    .end local v2    # "titleBarOffs":I
    :cond_4
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V

    .line 917
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public onGlobalScale(F)V
    .locals 1
    .param p1, "scale"    # F
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1240
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->a:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$b;

    if-eqz v0, :cond_0

    .line 1241
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->a:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$b;

    invoke-interface {v0, p1}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$b;->a(F)V

    .line 1243
    :cond_0
    return-void
.end method

.method public onImageClick(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "imgArray"    # [Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1099
    if-eqz p2, :cond_0

    array-length v1, p2

    if-gtz v1, :cond_2

    .line 1100
    :cond_0
    const-string/jumbo v1, "TitleBarWebView"

    const-string/jumbo v2, "onImageClick fail for imgArray is null or length is zero"

    invoke-static {v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    :cond_1
    :goto_0
    return-void

    .line 1104
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1105
    const-string/jumbo v1, "TitleBarWebView"

    const-string/jumbo v2, "onImageClick fail for url is empty"

    invoke-static {v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1109
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1110
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_1

    .line 1111
    new-instance v1, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$5;-><init>(Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 291
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 292
    .local v0, "bool":Z
    iget-boolean v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->d:Z

    if-eqz v2, :cond_1

    .line 307
    .end local v0    # "bool":Z
    :cond_0
    :goto_0
    return v0

    .line 295
    .restart local v0    # "bool":Z
    :cond_1
    iget-boolean v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->e:Z

    if-nez v2, :cond_2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_2

    move v0, v1

    .line 296
    goto :goto_0

    .line 299
    :cond_2
    iget-object v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->G:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 300
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->G:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getScrollY()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    iget-object v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->c:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 303
    iget-object v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->c:Landroid/view/View;

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, v1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 304
    :cond_3
    iget-object v1, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->c:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 305
    iget-object v1, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->c:Landroid/view/View;

    new-instance v2, Ljava/lang/Boolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 742
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->onLayout(ZIIII)V

    .line 744
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_1

    .line 745
    iget v3, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->s:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_0

    .line 746
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getScale()F

    move-result v3

    iput v3, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->s:F

    .line 748
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getTitleBarHeight()F

    move-result v3

    float-to-int v1, v3

    .line 749
    .local v1, "height":I
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 750
    .local v0, "ddsb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v3, "javascript:if(typeof window.updateTitleBar != \"undefined\"){window.updateTitleBar("

    invoke-virtual {v0, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 751
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 752
    const-string/jumbo v3, ");}"

    invoke-virtual {v0, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 753
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 754
    .local v2, "result":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->loadUrl(Ljava/lang/String;)V

    .line 764
    .end local v0    # "ddsb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v1    # "height":I
    .end local v2    # "result":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 2
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 729
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    .line 732
    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->f:Z

    if-nez v0, :cond_0

    .line 3708
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getScrollX()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->a(II)V

    .line 3709
    invoke-virtual {p0, v1, v1}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->scrollTo(II)V

    .line 736
    :cond_0
    return-void
.end method

.method public onSetEmbeddedTitleBar(Landroid/view/View;)V
    .locals 0
    .param p1, "title"    # Landroid/view/View;

    .prologue
    .line 1038
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "paramMotionEvent"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 313
    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 321
    :goto_0
    return v0

    :catch_0
    move-exception v1

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetContentHeight()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1195
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->postInvalidate()V

    .line 1196
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1197
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 1198
    new-instance v1, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$6;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$6;-><init>(Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1213
    :cond_0
    return-void
.end method

.method public saveScale(FF)V
    .locals 1
    .param p1, "_nScale"    # F
    .param p2, "_nRestoreBodyScrollWidth"    # F
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1042
    iput p1, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->s:F

    .line 1043
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->t:Z

    .line 1044
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->a()V

    .line 1045
    return-void
.end method

.method public selectionRange(F)V
    .locals 0
    .param p1, "selectionRange"    # F
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1231
    return-void
.end method

.method public setEmbeddedFooterBar(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 377
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->c:Landroid/view/View;

    if-ne v0, p1, :cond_0

    .line 393
    :goto_0
    return-void

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->c:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 381
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->c:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->removeView(Landroid/view/View;)V

    .line 384
    :cond_1
    if-eqz p1, :cond_3

    .line 386
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 387
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 388
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 389
    :cond_2
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 392
    :cond_3
    iput-object p1, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->c:Landroid/view/View;

    goto :goto_0
.end method

.method public setEmbeddedTitleBarCompat(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 340
    iget-boolean v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->B:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->A:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    .line 342
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->setEmbeddedTitleBarJellyBean(Landroid/view/View;)V

    .line 362
    :goto_0
    if-eqz p1, :cond_0

    .line 363
    iput-object p1, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->G:Landroid/view/View;

    .line 365
    :cond_0
    return-void

    .line 346
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->A:Ljava/lang/reflect/Method;

    if-nez v0, :cond_2

    .line 347
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "setEmbeddedTitleBar"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/view/View;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->A:Ljava/lang/reflect/Method;

    .line 349
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->B:Z

    .line 352
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->G:Landroid/view/View;

    if-eq v0, p1, :cond_3

    .line 353
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->A:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    :cond_3
    iput-object p1, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->G:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 359
    :catch_0
    move-exception v0

    invoke-direct {p0, p1}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->setEmbeddedTitleBarJellyBean(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setLoadsImagesAutomatically()V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1050
    return-void
.end method

.method public setOnTitleBarWebView(Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$b;)V
    .locals 0
    .param p1, "mOnTitleBarWebView"    # Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$b;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->a:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$b;

    .line 98
    return-void
.end method

.method public setPaddingLeft(I)V
    .locals 0
    .param p1, "paddingLeft"    # I

    .prologue
    .line 325
    iput p1, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->F:I

    .line 326
    return-void
.end method

.method public setRealContentHeight(F)V
    .locals 1
    .param p1, "h"    # F
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1189
    float-to-int v0, p1

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->r:F

    .line 1190
    return-void
.end method

.method public setTemplateFile(Ljava/lang/String;)V
    .locals 0
    .param p1, "localFilePath"    # Ljava/lang/String;

    .prologue
    .line 622
    iput-object p1, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->H:Ljava/lang/String;

    .line 623
    return-void
.end method

.method public showToolBar()V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1217
    return-void
.end method

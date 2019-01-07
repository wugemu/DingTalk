.class public final Ladd$b;
.super Ljava/lang/Object;
.source "MailSignTemplateAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ladd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field a:Landroid/view/View;

.field b:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

.field c:Landroid/widget/TextView;

.field public d:Z

.field final synthetic e:Ladd;


# direct methods
.method private constructor <init>(Ladd;)V
    .locals 1

    .prologue
    .line 156
    iput-object p1, p0, Ladd$b;->e:Ladd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Ladd$b;->d:Z

    return-void
.end method

.method synthetic constructor <init>(Ladd;B)V
    .locals 0
    .param p1, "x0"    # Ladd;

    .prologue
    .line 156
    invoke-direct {p0, p1}, Ladd$b;-><init>(Ladd;)V

    return-void
.end method

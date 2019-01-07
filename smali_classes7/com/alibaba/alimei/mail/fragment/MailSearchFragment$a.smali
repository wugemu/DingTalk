.class abstract Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$a;
.super Ljava/lang/Object;
.source "MailSearchFragment.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lxv",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected b:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 417
    .local p0, "this":Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$a;, "Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$a<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$a;->b:I

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 417
    .local p0, "this":Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$a;, "Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$a<TT;>;"
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0
    .param p1, "from"    # I

    .prologue
    .line 421
    .local p0, "this":Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$a;, "Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$a<TT;>;"
    iput p1, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$a;->b:I

    .line 422
    return-void
.end method

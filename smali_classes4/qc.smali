.class public final Lqc;
.super Ljava/lang/Object;
.source "IdentityHeaderBuilder.java"


# instance fields
.field public a:Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent;

.field public b:Lcom/alibaba/alimei/emailcommon/Account$QuoteStyle;

.field public c:Lcom/alibaba/alimei/emailcommon/Account$MessageFormat;

.field public d:Lcom/alibaba/alimei/emailcommon/Identity;

.field public e:Z

.field public f:Ljava/lang/String;

.field public g:Z

.field public h:Lcom/alibaba/alimei/adpater/message/QuotedTextMode;

.field public i:Lcom/alibaba/alimei/emailcommon/mail/MessageReference;

.field public j:Lvn;

.field public k:Lvn;

.field public l:I

.field public m:Landroid/net/Uri$Builder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/alimei/adpater/message/IdentityField;I)V
    .locals 1
    .param p1, "field"    # Lcom/alibaba/alimei/adpater/message/IdentityField;
    .param p2, "value"    # I

    .prologue
    .line 100
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lqc;->a(Lcom/alibaba/alimei/adpater/message/IdentityField;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public a(Lcom/alibaba/alimei/adpater/message/IdentityField;Ljava/lang/Enum;)V
    .locals 1
    .param p1, "field"    # Lcom/alibaba/alimei/adpater/message/IdentityField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/adpater/message/IdentityField;",
            "Ljava/lang/Enum",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p2, "value":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lqc;->a(Lcom/alibaba/alimei/adpater/message/IdentityField;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public a(Lcom/alibaba/alimei/adpater/message/IdentityField;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "field"    # Lcom/alibaba/alimei/adpater/message/IdentityField;
    .param p2, "value"    # Ljava/lang/Integer;

    .prologue
    .line 104
    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lqc;->a(Lcom/alibaba/alimei/adpater/message/IdentityField;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public a(Lcom/alibaba/alimei/adpater/message/IdentityField;Ljava/lang/String;)V
    .locals 2
    .param p1, "field"    # Lcom/alibaba/alimei/adpater/message/IdentityField;
    .param p2, "value"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 112
    iget-object v0, p0, Lqc;->m:Landroid/net/Uri$Builder;

    invoke-virtual {p1}, Lcom/alibaba/alimei/adpater/message/IdentityField;->value()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 113
    return-void
.end method

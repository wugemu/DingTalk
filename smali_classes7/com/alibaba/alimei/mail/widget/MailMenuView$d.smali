.class public final Lcom/alibaba/alimei/mail/widget/MailMenuView$d;
.super Ljava/lang/Object;
.source "MailMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/widget/MailMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "firstIndex"    # I
    .param p2, "secondIndex"    # I

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput p1, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView$d;->a:I

    .line 140
    iput p2, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView$d;->b:I

    .line 141
    return-void
.end method

.class abstract Lada$a;
.super Ljava/lang/Object;
.source "MailParticipantAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lada;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation


# instance fields
.field public final b:I

.field c:Lada;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "viewType"    # I

    .prologue
    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    iput p1, p0, Lada$a;->b:I

    .line 305
    return-void
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;)Landroid/view/View;
.end method

.method public abstract a(Landroid/content/Context;Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;)V
.end method

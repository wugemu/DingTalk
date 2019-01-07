.class final Levw$2;
.super Ljava/lang/Object;
.source "BigShowHelper.java"

# interfaces
.implements Levx$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Levw;->c(Landroid/content/Context;Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Levw$2;->a:Landroid/content/Context;

    iput-object p2, p0, Levw$2;->b:Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 112
    iget-object v0, p0, Levw$2;->a:Landroid/content/Context;

    iget-object v1, p0, Levw$2;->b:Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;

    invoke-static {v0, v1}, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->a(Landroid/content/Context;Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;)V

    .line 113
    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 117
    iget-object v0, p0, Levw$2;->a:Landroid/content/Context;

    iget-object v1, p0, Levw$2;->b:Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;

    invoke-static {v0, v1}, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->a(Landroid/content/Context;Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;)V

    .line 118
    return-void
.end method

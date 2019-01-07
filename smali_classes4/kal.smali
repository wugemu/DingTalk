.class final Lkal;
.super Ljvd$a;


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/app/NotificationManager;


# direct methods
.method constructor <init>(ILandroid/app/NotificationManager;)V
    .locals 0

    iput p1, p0, Lkal;->a:I

    iput-object p2, p0, Lkal;->b:Landroid/app/NotificationManager;

    invoke-direct {p0}, Ljvd$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lkal;->a:I

    return v0
.end method

.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    iget-object v0, p0, Lkal;->b:Landroid/app/NotificationManager;

    iget v1, p0, Lkal;->a:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

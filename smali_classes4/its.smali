.class final Lits;
.super Landroid/telephony/PhoneStateListener;


# instance fields
.field final synthetic a:Litr;

.field final synthetic b:Landroid/telephony/TelephonyManager;


# direct methods
.method constructor <init>(Litr;Landroid/telephony/TelephonyManager;)V
    .locals 0

    iput-object p1, p0, Lits;->a:Litr;

    iput-object p2, p0, Lits;->b:Landroid/telephony/TelephonyManager;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 0
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lits;->a:Litr;

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v1

    .line 1000
    iput v1, v0, Litr;->l:I

    .line 0
    :cond_0
    iget-object v0, p0, Lits;->b:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method
